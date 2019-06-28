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
				    <a href="${pageContext.request.contextPath }/customer/list.action" class="active">
				      <i class="fa fa-edit fa-fw"></i> 教师信息
				    </a>
				</li>
				<li>
				    <a href="#">
				      <i class="fa fa-dashboard fa-fw" ></i> 客户拜访
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
                      action="${pageContext.request.contextPath }/showteacher.action">
                    <div class="form-group">
                        <label for="customerName">教师名称</label>
                        <input type="text" class="form-control" id="customerName"
                               value="${s_name }" name="s_name" />
                    </div>
                    <div class="form-group">
                        <label for="customerFrom">所属部门</label>
                        <select	class="form-control" id="customerFrom" name="d_name">
                            <option value="">--请选择--</option>
                            <c:forEach items="${departmentNames}" var="item">
                                <option selected>
                                        ${item }
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="custIndustry">岗位类别</label>
                        <select	class="form-control" id="custIndustry"  name="p_type">
                            <option value="">--请选择--</option>
                            <c:forEach items="${types}" var="item">
                                <option selected>
                                        ${item}
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <div class="form-group">
                        <label for="custLevel">岗位名称</label>
                        <select	class="form-control" id="custLevel" name="p_category">
                            <option value="">--请选择--</option>
                            <c:forEach items="${categoriesList}" var="item">
                                <option  selecte>
                                        ${item }
                                </option>
                            </c:forEach>
                        </select>
                    </div>
                    <button type="submit" class="btn btn-primary">查询</button>
                </form>
			</div>
		</div>
		<a href="#" class="btn btn-primary" data-toggle="modal" 
		           data-target="#newCustomerDialog" onclick="clearCustomer()">新增</a>
		<div class="row">
			<div class="col-lg-12">
				<div class="panel panel-default">
					<div class="panel-heading">教师信息列表</div>
					<!-- /.panel-heading -->
                   <form action="${pageContext.request.contextPath }/showteacher.action"
                        method="post" id="test_form">

                        <input  type="hidden" id="pageNumber"   name="pageNumber">
                    </form>
					<table class="table table-bordered table-striped">
						<thead>
							<tr>
								<th>工号</th>
								<th>姓名</th>
								<th>性别</th>
								<th>出生日期</th>
                                <th>职称</th>
                                <th>部门</th>
                                <th>岗位类别</th>
								<th>从事岗位</th>
								<th>手机</th>
								<th>职位状态</th>
                                <th>操作</th>
							</tr>
						</thead>
						<tbody>-
							<c:forEach items ="${teacher }" var="row">
								<tr>
									<td>${row.s_id}</td>
									<td>${row.s_name}</td>
									<td>${row.s_gender}</td>
									<td>${row.s_birthday}</td>
									<td>${row.t_name}</td>
									<td>${row.d_name}</td>
								    <td>${row.p_type}</td>
                                    <td>${row.p_category}</td>
                                    <td>${row.s_tel}</td>
                                    <td>${row.s_statue}</td>
									<td>
										<button href="#" class="btn btn-primary btn-xs" data-toggle="modal" data-target="#customerEditDialog" onclick="editStaff(${row.s_id})">修改</button>
										<a href="#" class="btn btn-danger btn-xs" onclick="deleteStaff(${row.s_id})">删除</a>
									</td>
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

				<!-- /.panel -->
			</div>
			<!-- /.col-lg-12 -->
		</div>
	</div>
	<!-- 客户列表查询部分  end-->
    </form>
</div>
<!-- 创建客户模态框 -->
<div class="modal fade" id="newCustomerDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close" >
					<span aria-hidden="true" >X</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">新建客户信息</h4>
			</div>
			<div class="modal-body">
				<form class="form-horizontal" id="new_customer_form">
					<div class="form-group">
						<label for="new_customerName" class="col-sm-2 control-label">
						    客户名称
						</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_customerName" placeholder="客户名称" name="cust_name" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_customerFrom" style="float:left;padding:7px 15px 0 27px;">客户来源</label> 
						<div class="col-sm-10">
							<select	class="form-control" id="new_customerFrom" name="cust_source">
								<option value="">--请选择--</option>
								<c:forEach items="${fromType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custSource}">selected</c:if>>
									${item.dict_item_name }									
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custIndustry" style="float:left;padding:7px 15px 0 27px;">所属行业</label>
						<div class="col-sm-10"> 
							<select	class="form-control" id="new_custIndustry"  name="cust_industry">
								<option value="">--请选择--</option>
								<c:forEach items="${industryType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custIndustry}"> selected</c:if>>
									${item.dict_item_name }
									</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_custLevel" style="float:left;padding:7px 15px 0 27px;">客户级别</label>
						<div class="col-sm-10">
							<select	class="form-control" id="new_custLevel" name="cust_level">
								<option value="">--请选择--</option>
								<c:forEach items="${levelType}" var="item">
									<option value="${item.dict_id}"<c:if test="${item.dict_id == custLevel}"> selected</c:if>>${item.dict_item_name }</option>
								</c:forEach>
							</select>
						</div>
					</div>
					<div class="form-group">
						<label for="new_linkMan" class="col-sm-2 control-label">联系人</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_linkMan" placeholder="联系人" name="cust_linkman" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_phone" class="col-sm-2 control-label">固定电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_phone" placeholder="固定电话" name="cust_phone" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_mobile" class="col-sm-2 control-label">移动电话</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_mobile" placeholder="移动电话" name="cust_mobile" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_zipcode" class="col-sm-2 control-label">邮政编码</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_zipcode" placeholder="邮政编码" name="cust_zipcode" />
						</div>
					</div>
					<div class="form-group">
						<label for="new_address" class="col-sm-2 control-label">联系地址</label>
						<div class="col-sm-10">
							<input type="text" class="form-control" id="new_address" placeholder="联系地址" name="cust_address" />
						</div>
					</div>
				</form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="createCustomer()">创建客户</button>
			</div>
		</div>
	</div>
</div>
<!-- 修改客户模态框 -->
<div class="modal fade" id="customerEditDialog" tabindex="-1" role="dialog"
	aria-labelledby="myModalLabel">
	<div class="modal-dialog" role="document">
		<div class="modal-content">
			<div class="modal-header">
				<button type="button" class="close" data-dismiss="modal" aria-label="Close">
					<span aria-hidden="true">&times;</span>
				</button>
				<h4 class="modal-title" id="myModalLabel">修改客户信息</h4>
			</div>
			<div class="modal-body">
                <form class="form-horizontal" id="edit_customer_form">

                    <div class="form-group">
                        <label for="edit_s_id" class="col-sm-2 control-label">工号</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_s_id" placeholder="工号" name="s_id" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_s_name" class="col-sm-2 control-label">姓名</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_s_name" placeholder="姓名" name="s_name" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_s_gender" class="col-sm-2 control-label">性别</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_s_gender" placeholder="性别" name="s_gender" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_s_birthday" class="col-sm-2 control-label">出生日期</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_s_birthday" placeholder="出生日期" name="s_birthday" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_s_tel" class="col-sm-2 control-label">移动电话</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_s_tel" placeholder="移动电话" name="s_tel" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_s_statue" class="col-sm-2 control-label">状态</label>
                        <div class="col-sm-10">
                            <input type="text" class="form-control" id="edit_s_statue" placeholder="状态" name="s_statue" />
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_p_type" style="float:left;padding:7px 15px 0 27px;">岗位类别</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_p_type" name="p_type">
                                <option value="">--请选择--</option>
                                <c:forEach items="${types}" var="item">
                                    <option selected>${item}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_p_category" style="float:left;padding:7px 15px 0 27px;">从事岗位</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_p_category"  name="p_category">
                                <option value="">--请选择--</option>
                                <c:forEach items="${categoriesList}" var="item">
                                    <option selected>${item}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_d_name" style="float:left;padding:7px 15px 0 27px;">在职部门</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_d_name" name="d_name">
                                <option value="">--请选择--</option>
                                <c:forEach items="${departmentNames}" var="item">
                                    <option  selected>${item}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                    <div class="form-group">
                        <label for="edit_t_name" style="float:left;padding:7px 15px 0 27px;">现任职称</label>
                        <div class="col-sm-10">
                            <select	class="form-control" id="edit_t_name" name="t_name">
                                <option value="">--请选择--</option>
                                <c:forEach items="${titleNames}" var="item">
                                    <option selected>${item}</option>
                                </c:forEach>
                            </select>
                        </div>
                    </div>
                </form>
			</div>
			<div class="modal-footer">
				<button type="button" class="btn btn-default" data-dismiss="modal">关闭</button>
				<button type="button" class="btn btn-primary" onclick="updateStaff()">保存修改</button>
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
    const slp = new SimplePagination(12)
    slp.init({
        container: '.box',
        maxShowBtnCount: 3
    })
 console.log(num)
    slp.gotoPage(num)


//清空新建客户窗口中的数据
	function clearCustomer() {
	    $("#new_customerName").val("");
	    $("#new_customerFrom").val("")
	    $("#new_custIndustry").val("")
	    $("#new_custLevel").val("")
	    $("#new_linkMan").val("");
	    $("#new_phone").val("");
	    $("#new_mobile").val("");
	    $("#new_zipcode").val("");
	    $("#new_address").val("");
	}
	// 创建客户
	function createCustomer() {
	$.post("<%=basePath%>customer/create.action",
	$("#new_customer_form").serialize(),function(data){
	        if(data =="OK"){
	            alert("客户创建成功！");
	            window.location.reload();
	        }else{
	            alert("客户创建失败！");
	            window.location.reload();
	        }
	    });
	}
	// 通过id获取修改的客户信息
	function editStaff(id) {
        $.ajax({
            type:"get",
            url:"<%=basePath%>findById.action",
            data:{"s_id":id},
            success:function(data) {
                $("#edit_s_name").val(data.s_name);
                $("#edit_s_gender").val(data.s_gender);
                $("#edit_s_birthday").val(data.s_birthday)
                $("#edit_s_tel").val(data.s_tel)
                $("#edit_s_statue").val(data.s_statue)
                $("#edit_p_type").val(data.p_type);
                $("#edit_p_category").val(data.p_category);
                $("#edit_d_name").val(data.d_name);
                $("#edit_t_name").val(data.t_name);
                $("#edit_s_id").val(data.s_id);
            }
        });

	}
    // 执行修改客户操作
	function updateStaff() {
		$.post("<%=basePath%>updateStaff.action",$("#edit_customer_form").serialize(),
            function(data){
			if(data =="OK"){
				alert("客户信息更新成功！");
				window.location.reload();
			}else{
				alert("客户信息更新失败！");
				window.location.reload();
			}
		});
	}
	// 删除客户
	function deleteStaff(id) {
        console.log(id)
	    if(confirm('确实要删除该客户吗?')) {
	$.get("<%=basePath%>deleteStaff.action",{"s_id":id},
	function(data){
	            if(data =="OK"){
	                alert("客户删除成功！");
	                window.location.reload();
	            }else{
	                alert("删除客户失败！");
	                window.location.reload();
	            }
	        });
	    }
	}
//

//点击页数

</script>
</body>
</html>