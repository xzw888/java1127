<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
	<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css" />
</head>

<body>

<form action="dept_saveDep.action" method="post">
	<div class="formbody">
		<div class="formtitle"><span>部门信息</span></div>
		<ul class="forminfo">
			<li>
				<label>部门名称</label>
				<input name="dept.depname" type="text" class="dfinput" value="${dept.depname}"/>
				<i></i>
			</li>
			<li>
				<label>部门编号</label>
				<input name="depNo" type="text" class="dfinput" value="${dept.depNo}"/>
				<i></i>
			</li>
			<li>
				<label>部门描述</label>
				<input name="depdesc" type="text" class="dfinput" value="${dept.depdesc }"/>
				<input type="hidden" value="${dept.depid}" name="depid"/>
				<input type="hidden" value="${dept.depManageId}" name="depManageId"/>
			</li>
			<li>
				<label>&nbsp;</label>
				<input name="" type="submit" class="btn" value="确认保存"/>
			</li>
		</ul>
	</div>
</form>


<script type="text/javascript" src="<%=basePath %>plugins/jQuery/jquery.js"></script>
</body>
</html>
	