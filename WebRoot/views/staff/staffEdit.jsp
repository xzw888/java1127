<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<form action="staff_updateStaff.action" method="post">
	<div class="formbody">
		<div class="formtitle"><span>职工基本信息</span></div>
		<ul class="forminfo">
			<li>
				<label>职工姓名</label>
				<input name="id" type="hidden" value="${staff.id}"/>
				<input name="name" type="text" class="dfinput" value="${staff.name}"/>
				<i></i>
			</li>
			<li>
				<label>职工工号</label>
				<input name="bh" type="text" class="dfinput" value="${staff.bh}"/>
				<i></i>
			</li>
			<li>
				<label>登录名</label>
				<input name="loginname" type="text" class="dfinput" value="${staff.loginname}"/>
				<i></i>
			</li>
			<li>
				<label>密码</label>
				<input name="password" type="password" class="dfinput" value="${staff.password}"/>
				<i></i>
			</li>
			<li>
				<label>性别</label>
				<cite>
					<input name="sex" type="radio" value="男" checked="checked" />男&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="sex" type="radio" value="女" />女
				</cite>
			</li>
			<li>
				<label>住址</label>
				<input name="address" type="text" class="dfinput" value="${staff.address}"/>
				<i></i>
			</li>
			
			<li>
				<label>联系方式</label>
				<input name="tel" type="text" class="dfinput" value="${staff.tel}"/>
				<i></i>
			</li>
			
			<li>
				<label>email</label>
				<input name="email" type="text" class="dfinput" value="${staff.email}"/>
				<i></i>
			</li>
			
			<li>
				<label>部门</label>
				<!--  name=" userInfo.department.depId"-->
				<select class="dfinput"  name="dept.depid" >
					<c:forEach items="${dlist}" var="d">
					  <option value="${d.depid}" <c:if test='${d.depid==staff.dept.depid}'> selected="selected"</c:if>  >${d.depname}</option>
					</c:forEach>
				</select>
			</li>
			<li>
				<label>备注</label>
				<textarea name="remark" cols="" rows="" class="textinput">${staff.remark}</textarea>
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
	