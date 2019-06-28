package cn.edu.huel.ctmanager.interceptor;

import org.apache.ibatis.executor.parameter.ParameterHandler;
import org.apache.ibatis.executor.statement.StatementHandler;
import org.apache.ibatis.mapping.MappedStatement;
import org.apache.ibatis.plugin.*;
import org.apache.ibatis.reflection.MetaObject;
import org.apache.ibatis.reflection.SystemMetaObject;

import java.sql.Connection;
import java.util.Map;
import java.util.Properties;


@Intercepts({@Signature(type = StatementHandler.class,method = "prepare",args={Connection.class,Integer.class})})
public class ByPageInterceptor implements Interceptor {

private int pageSize;
private int currPage;
private String dbType;
    @Override
    public Object intercept(Invocation invocation) throws Throwable {
        StatementHandler statementHandler= (StatementHandler) invocation.getTarget();
        MetaObject metaObjectHandler= SystemMetaObject.forObject(statementHandler);
        while(metaObjectHandler.hasGetter("h")){
            Object obj=metaObjectHandler.getValue("h");
            metaObjectHandler=SystemMetaObject.forObject(obj);
        }
        while (metaObjectHandler.hasGetter("target")){
            Object obj=metaObjectHandler.getValue("target");
            metaObjectHandler=SystemMetaObject.forObject(obj);
        }
      //Connection connection=invocation.getArgs();
         MappedStatement mappedStatement= (MappedStatement) metaObjectHandler.getValue("delegate.mappedStatement");
         String mapid=mappedStatement.getId();
         if(mapid.matches(".+ByPage$")){
             ParameterHandler parameterHandler= (ParameterHandler) metaObjectHandler.getValue("delegate.parameterHandler");
             Map<String,Object> paraObject= (Map<String, Object>) parameterHandler.getParameterObject();
             currPage= (int) paraObject.get("currPage");
             pageSize= (int) paraObject.get("pageSize");
             String sql= (String) metaObjectHandler.getValue("delegate.boundSql.sql");
             String limitsql;
             sql=sql.trim();
             limitsql=sql+"limit" +(currPage-1)*pageSize+","+pageSize;
             metaObjectHandler.setValue("delegate.boundSql.sql",limitsql);
         }
        return invocation.proceed();
    }

    @Override
    public Object plugin(Object target) {
        return Plugin.wrap(target,this);
    }

    @Override
    public void setProperties(Properties properties) {
String limit1=properties.getProperty("limit","10");
    this.pageSize=Integer.valueOf(limit1);
    this.dbType=properties.getProperty("dbType","mysql");
    }
}
