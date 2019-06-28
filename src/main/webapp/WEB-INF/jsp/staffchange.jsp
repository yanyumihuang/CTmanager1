<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"  %>
<%@ page trimDirectiveWhitespaces="true"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://" + request.getServerName()
            + ":" + request.getServerPort() + path + "/";
    String pagN= (String) session.getAttribute("pageN");
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>教师管理系统</title>
    <!-- 引入css样式文件 -->
    <!-- Bootstrap Core CSS -->
    <link href="<%=basePath%>css/bootstrap.min.css" rel="stylesheet" />
    <!-- MetisMenu CSS -->
    <link href="<%=basePath%>css/metisMenu.min.css" rel="stylesheet" />
    <!-- DataTables CSS -->
    <link href="<%=basePath%>css/dataTables.bootstrap.css" rel="stylesheet" />
    <!-- Custom CSS -->
    <link href="<%=basePath%>css/sb-admin-2.css" rel="stylesheet" />
    <!-- Custom Fonts -->
    <link href="<%=basePath%>css/font-awesome.min.css" rel="stylesheet" type="text/css" />
    <link href="<%=basePath%>css/boot-crm.css" rel="stylesheet" type="text/css" />
    <link rel="stylesheet"  href="<%=basePath%>css/jquery.pagination.css">
    <link rel="stylesheet" href="<%=basePath%>css/fenyestyle.css">
</head>
<body class="a">
<div id="wrapper">
    <!-- 导航栏部分 -->
    <nav class="navbar navbar-default navbar-static-top" role="navigation"
         style="margin-bottom: 0">
        <div class="navbar-header">
            <a class="navbar-brand" href="<%=basePath%>customer/list.action">教师管理系统 v1.0</a>
        </div>
        <!-- 导航栏右侧图标部分 -->
        <ul class="nav navbar-top-links navbar-right">
            <!-- 邮件通知 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-envelope fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-messages">
                    <li>
                        <a href="#">
                            <div>
                                <strong>张老手</strong> <span class="pull-right text-muted">
								<em>昨天</em>
							</span>
                            </div>
                            <div>今天晚上开会，讨论一下下个月工作的事...</div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看全部消息</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 邮件通知 end -->
            <!-- 任务通知 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-tasks fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-tasks">
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>任务 1</strong>
                                    <span class="pull-right text-muted">完成40%</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-success"
                                         role="progressbar" aria-valuenow="40" aria-valuemin="0"
                                         aria-valuemax="100" style="width: 40%">
                                        <span class="sr-only">完成40%</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <p>
                                    <strong>任务 2</strong>
                                    <span class="pull-right text-muted">完成20%</span>
                                </p>
                                <div class="progress progress-striped active">
                                    <div class="progress-bar progress-bar-info" role="progressbar"
                                         aria-valuenow="20" aria-valuemin="0" aria-valuemax="100"
                                         style="width: 20%">
                                        <span class="sr-only">完成20%</span>
                                    </div>
                                </div>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看所有任务</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 任务通知 end -->
            <!-- 消息通知 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-bell fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-alerts">
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-comment fa-fw"></i> 新回复
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-envelope fa-fw"></i> 新消息
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-tasks fa-fw"></i> 新任务
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a href="#">
                            <div>
                                <i class="fa fa-upload fa-fw"></i> 服务器重启
                                <span class="pull-right text-muted small">4分钟之前</span>
                            </div>
                        </a>
                    </li>
                    <li class="divider"></li>
                    <li>
                        <a class="text-center" href="#">
                            <strong>查看所有提醒</strong>
                            <i class="fa fa-angle-right"></i>
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 消息通知 end -->
            <!-- 用户信息和系统设置 start -->
            <li class="dropdown">
                <a class="dropdown-toggle" data-toggle="dropdown" href="#">
                    <i class="fa fa-user fa-fw"></i>
                    <i class="fa fa-caret-down"></i>
                </a>
                <ul class="dropdown-menu dropdown-user">
                    <li><a href="#"><i class="fa fa-user fa-fw"></i>
                        用户：${user_session.sys_id}
                    </a>
                    </li>
                    <li><a href="#"><i class="fa fa-gear fa-fw"></i> 系统设置</a></li>
                    <li class="divider"></li>
                    <li>
                        <a href="${pageContext.request.contextPath }/logout.action">
                            <i class="fa fa-sign-out fa-fw"></i>退出登录
                        </a>
                    </li>
                </ul>
            </li>
            <!-- 用户信息和系统设置结束 -->
        </ul>
        <!-- 左侧显示列表部分 start-->
        <div class="navbar-default sidebar" role="navigation"style="margin-top:83px">

            <div class="sidebar-nav navbar-collapse">
                <ul class="nav" id="side-menu">
                    <li class="sidebar-search">

                        <div class="input-group custom-search-form">

                            <input type="text" class="form-control" placeholder="查询内容...">
                            <span class="input-group-btn">
							<button class="btn btn-default" type="button">
								<i class="fa fa-search" style="padding: 3px 0 3px 0;"></i>
							</button>
						</span>
                        </div>
                    </li>
                </ul>
                <ul>
                    <li>
                        <a href="${pageContext.request.contextPath }/showteacher.action" class="active">
                            <i class="fa fa-edit fa-fw"></i> 教师信息
                        </a>
                    </li>
                    <li>
                        <a href="${pageContext.request.contextPath }/showchangs.action" class="active">
                            <i class="fa fa-dashboard fa-fw" ></i>异动信息
                        </a>
                    </li>
                </ul>
            </div>
        </div>
        <!-- 左侧显示列表部分 end-->
    </nav>
    <!-- 客户列表查询部分  start-->
    <div id="page-wrapper">
        <div class="row">
            <div class="col-lg-12">
                <h1 class="page-header">教师管理</h1>
            </div>
            <!-- /.col-lg-12 -->
        </div>
        <!-- /.row -->
        <div class="panel panel-default">
            <div class="panel-body">
                <form class="form-inline" method="get"
                      action="${pageContext.request.contextPath }/showchangs.action">
                    <div class="form-group">
                        <label for="customerName">教师名称</label>
                        <input type="text" class="form-control" id="customerName"
                                name="s_id" />
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
            </div>
        </div>
        <a href="#" class="btn btn-primary" data-toggle="modal"
           data-target="#addchangeDialog" onclick="clearchange()">新增</a>
        <div class="row">
            <div class="col-lg-12">
                <div class="panel panel-default">
                    <div class="panel-heading">异动信息列表</div>
                    <!-- /.panel-heading -->
                    <form action="${pageContext.request.contextPath }/showchangs.action"
                          method="post" id="test_form">
                        <input  type="hidden" id="pageNumber"   name="pageNumber">
                    </form>
                    </form>
                    <table class="table table-bordered table-striped">
                        <thead>
                        <tr>
                            <th>变动id</th>
                            <th>工号</th>
                            <th>变动方式</th>
                            <th>变动时间</th>
                            <th>变动详情</th>
                        </tr>
                        </thead>
                        <tbody>-
                        <c:forEach items="${staffchanges}" var="row">
                            <tr>
                                <td>${row.c_id}</td>
                                <td>${row.s_id}</td>
                                <td>${row.c_situation}</td>
                                <td>${row.c_changetime}</td>
                                <td>${row.c_explain}</td>
                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                    <input type="hidden" value="${total}" id="total"/>
                    <!-- /.panel-body -->
                </div>
                <div class="box">
                </div>
                <form action="" id="page-go">
                    <input type="text" id="page-num">
                    <input type="submit" id="goto" value="Go">
                </form>

                <!-- /.panel -->
            </div>
            <!-- /.col-lg-12 -->
        </div>
    </div>
    <!-- 客户列表查询部分  end-->
<!-- 创建客户模态框 -->
<div class="modal fade" id="addchangeDialog" tabindex="-1" role="dialog"
     aria-labelledby="myModalLabel">
    <div class="modal-dialog" role="document">
        <div class="modal-content">
            <div class="modal-header">
                <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                    <span aria-hidden="true">&times;</span>
                </button>
                <h4 class="modal-title" id="myModalLabel">新建异动信息</h4>
            </div>
            <div class="modal-body">
                <form class="form-horizontal" id="new_change_form">
                    <div class="form-group">
                        <label for="new_s_id" class="col-sm-2 control-label">工号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_s_id" placeholder="工号" name="s_id" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_c_situation" class="col-sm-2 control-label">变动方式</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_c_situation" placeholder="变动方式" name="c_situation" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_c_changetime" class="col-sm-2 control-label">变动时间</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_c_changetime" placeholder="变动时间" name="c_changetime" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="new_c_explain" class="col-sm-2 control-label">变动详情</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="new_c_explain" placeholder="变动详情" name="c_explain" />
                        </div>
                    </div>
                </form>
            </div>
            <div class="modal-footer">
                <button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
                <button type="button" class="btn btn-primary" onclick="createchanges()">创建客户</button>
            </div>
        </div>
    </div>
</div>
<!-- 引入js文件 -->
<!-- jQuery -->
<script src="<%=basePath%>js/jquery-3.4.1.min.js"></script>
<!-- Bootstrap Core JavaScript -->
<script src="<%=basePath%>js/bootstrap.min.js"></script>
<!-- Metis Menu Plugin JavaScript -->
<script src="<%=basePath%>js/metisMenu.min.js"></script>
<!-- DataTables JavaScript -->
<script src="<%=basePath%>js/jquery.dataTables.min.js"></script>
<script src="<%=basePath%>js/dataTables.bootstrap.min.js"></script>
<!-- Custom Theme JavaScript -->
<script src="<%=basePath%>js/sb-admin-2.js"></script>
<script th:src="<%=basePath%>js/jquery.pagination.min.js"></script>
<script src="<%=basePath%>js/SimplePagination.js"></script>
<!-- 编写js代码 -->
<%--分页js--%>
<script type="text/javascript">
    var num=<%=pagN%>;
    var stuName = $("#total").val();
    const slp = new SimplePagination(Math.ceil(parseInt(stuName)/3))
    slp.init({
        container: '.box',
        maxShowBtnCount: 3
    })
    console.log(num)
    slp.gotoPage(num)
    function clearchange() {
        $("#new_s_id").val("");
        $("#new_c_changetime").val("")
        $("#new_c_explain").val("")
        $("#new_c_situation").val("")
    }
    function createchanges(){
        $.post("<%=basePath%>addchang.action",
            $("#new_change_form").serialize(), function (data) {
                if (data == "OK") {
                    alert("客户创建成功！");
                    window.location.reload();
                } else {
                    alert("客户创建失败！");
                    window.location.reload();
                }
            });
    }
</script>
</body>
</html>