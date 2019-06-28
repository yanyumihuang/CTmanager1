package cn.edu.huel.ctmanager.utils;
import java.lang.reflect.Method;
import java.sql.Date;
import cn.edu.huel.ctmanager.pojo.Log;
import cn.edu.huel.ctmanager.pojo.User;
import cn.edu.huel.ctmanager.service.LogService;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Pointcut;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;


@Aspect
@Component
public class LogAspect {
    @Autowired
    private LogService logService;
	private static int id;
    private User user;
	@Pointcut("execution(* cn.edu.huel.ctmanager.serviceImpl.UserServiceIm.findUser(..))")
	private void login(){};
	@Pointcut("execution(* cn.edu.huel.ctmanager.serviceImpl.StaffServiceImpl.insertStaff(..))")
	private void insert(){};
	@Pointcut("execution(* cn.edu.huel.ctmanager.serviceImpl.StaffServiceImpl.deleteStaff(..))")
	private void delete(){};
	@Pointcut("execution(* cn.edu.huel.ctmanager.serviceImpl.StaffServiceImpl.upadteStaff(..))")
	private void update(){};
	@AfterReturning(value="login()",argNames = "joinPoint,object", returning = "object")
	public void Afterlogin(JoinPoint joinPoint,Object object)throws Throwable{
		user=(User)object;  
        if (user==null) {  
            return;  
        }  
        if (joinPoint.getArgs() == null) {// 没有参数  
            return;  
        }  
        id=user.getSys_id();
        // 获取方法名  
        String methodName = joinPoint.getSignature().getName();  
        // 获取操作内容  
        String opContent = optionContent(joinPoint.getArgs(), methodName);  
          
        Log log = new Log();
        log.setOpContent(opContent);  
        log.setId(id);
        log.setTime(datetoString.switchq());
        log.setMethod("登录");
        logService.insertLog(log);
	}
	@AfterReturning(value="insert()",argNames = "object", returning = "object")
	 public void Afterinsert(JoinPoint joinPoint, Object object) throws Throwable {  
       // Admin admin=(Admin)  
       // request.getSession().getAttribute("businessAdmin");  
       // 判断参数    
	       // 获取方法名  
	       String methodName = joinPoint.getSignature().getName();  
	       // 获取操作内容  
	       String opContent = optionContent(joinPoint.getArgs(), methodName);  
	       Log log = new Log();  
	       log.setOpContent(opContent);  
	       log.setId(id);  
	       log.setMethod("添加");

	       log.setTime(datetoString.switchq());
	       System.out.println(log);
        logService.insertLog(log);
   }  
	 @AfterReturning(value = "update()", argNames = "object", returning = "object")  
     public void updateLog(JoinPoint joinPoint, Object object) throws Throwable {  
         // Admin admin=(Admin)  
         // request.getSession().getAttribute("businessAdmin");  
   
         // 判断参数  
         if (joinPoint.getArgs() == null) {// 没有参数  
             return;  
         }  
         // 获取方法名  
         String methodName = joinPoint.getSignature().getName();  
         // 获取操作内容  
         String opContent = optionContent(joinPoint.getArgs(), methodName);  
   
         // 创建日志对象  
         Log log = new Log();  
         log.setMethod("修改");  
         log.setId(id);  
         log.setOpContent(opContent);// 操作  
         log.setTime(datetoString.switchq());
         logService.insertLog(log);
     } 
   @AfterReturning(value = "delete()", argNames = "object", returning = "object")
   public void deleteLog(JoinPoint joinPoint, Object object) throws Throwable {  
    // Admin admin=(Admin)  
    // request.getSession().getAttribute("businessAdmin");  
    // 判断参数  
    if (joinPoint.getArgs() == null) {// 没有参数  
        return;  
    }  
    // 获取方法名  
    String methodName = joinPoint.getSignature().getName();  

    StringBuffer rs = new StringBuffer();  
    rs.append(methodName);  
    String className = null;  
    for (Object info : joinPoint.getArgs()) {  
        // 获取对象类型  
        className = info.getClass().getName();  
        className = className.substring(className.lastIndexOf(".") + 1);  
        rs.append("[参数，类型:" + className + "，值:(id:"  
                + joinPoint.getArgs()[0] + ")");  
    }  
    // 创建日志对象  
    Log log = new Log();  
    log.setMethod(methodName);  
    log.setId(id);  
    log.setOpContent("删除");// 操作  
    log.setTime(datetoString.switchq());
       logService.insertLog(log);
    } 
    public String optionContent(Object[] args, String mName) {  
        if (args == null) {  
            return null;  
        }  
        StringBuffer rs = new StringBuffer();  
        rs.append(mName);  
        String className = null;  
        int index = 1;  
        // 遍历参数对象  
        for (Object info : args) {  
            // 获取对象类型  
            className = info.getClass().getName();  
            className = className.substring(className.lastIndexOf(".") + 1);  
            rs.append("[参数" + index + "，类型:" + className + "，值:"+info);  
            // 获取对象的所有方法  
            Method[] methods = info.getClass().getDeclaredMethods();  
            // 遍历方法，判断get方法  
            for (Method method : methods) {  
                String methodName = method.getName();  
                // 判断是不是get方法  
                if (methodName.indexOf("get") == -1) {// 不是get方法  
                    continue;// 不处理  
                }  
                Object rsValue = null;  
                try {  
                    // 调用get方法，获取返回值  
                    rsValue = method.invoke(info);  
                } catch (Exception e) {  
                    continue;  
                }  
                // 将值加入内容中  
                rs.append("(" + methodName + ":" + rsValue + ")");  
            }  
            rs.append("]");  
            index++;  
        }
        return rs.toString();
       
}}
