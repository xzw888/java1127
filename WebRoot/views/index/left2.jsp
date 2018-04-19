<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>" target="rightFrame"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<title>无标题文档</title>
	<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css" />
</head>

<body style="background:#f0f9fd;">

<div class="lefttop"><span></span>菜单列表</div>
<dl class="leftmenu">
	<!-- 第一个模块开始 -->
	<dd>
		<div class="title">
			<span><img src="<%=basePath %>images/leftico01.png"/></span>员工资料管理
		</div>
		<ul class="menuson">
			<li class="active"><cite></cite><a href="staff_stafflist.action" >职工列表</a><i></i></li>
			<li class=""><cite></cite><a href="staff_addStaff.action" >添加职工</a><i></i></li>
		</ul> 
		
	</dd>
	<!-- 第一个模块结束 -->
	
	<!-- 第二个模块开始 -->
	<dd>
		<div class="title">
			<span><img src="<%=basePath %>images/leftico01.png"/></span>公司部门管理
		</div>
		<ul class="menuson">
		<li class="active"><cite></cite><a href="dept_depList.action" >部门列表</a><i></i></li>
			<li class=""><cite></cite><a href="<%=basePath %>departmentpage/depform.jsp" >添加部门</a><i></i></li>
		</ul>    
	</dd>
	<!-- 第二个模块结束 -->
	
	<!-- 第三个模块开始 -->
	<dd>
		<div class="title">
			<span><img src="<%=basePath %>images/leftico01.png"/></span>员工考勤管理
		</div>
		<ul class="menuson">
		<li class=""><cite></cite><a href="<%=basePath %>record_getRecords" >申请记录</a><i></i></li>
		<li class="active"><cite></cite><a href="<%=basePath %>record/recordform.jsp" >请假</a><i></i></li>
		<li class=""><cite></cite><a href="<%=basePath %>record/overwork.jsp" >加班</a><i></i></li>
		</ul>    
	</dd>
	<!-- 第三个模块结束 -->
	
	<!-- 第四个模块开始 -->
	<%-- <dd>
		<div class="title">
			<span><img src="<%=basePath %>images/leftico01.png"/></span>职工薪资管理
		</div>
		<ul class="menuson">
		<li class="active"><cite></cite><a href="<%=basePath %>demo/add_demo.jsp" >薪资列表</a><i></i></li>
		</ul>    
	</dd> --%>
	<!-- 第四个模块结束 -->
</dl>

<script type="text/javascript" src="<%=basePath %>plugins/jQuery/jquery.js"></script>
<script type="text/javascript">
$(function(){	
	//导航切换
	$(".menuson li").click(function(){
		$(".menuson li.active").removeClass("active")
		$(this).addClass("active");
	});
	
	$('.title').click(function(){
		var $ul = $(this).next('ul');
		$('dd').find('ul').slideUp();
		if($ul.is(':visible')){
			$(this).next('ul').slideUp();
		}else{
			$(this).next('ul').slideDown();
		}
	});
})
</script>
</body>
</html>
