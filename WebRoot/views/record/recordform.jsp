<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
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
	<script type="text/javascript" src="<%=basePath %>plugins/jQuery/jquery.js"></script>
	<script type="text/javascript" src="<%=basePath %>date/WdatePicker.js"></script>
	<script type="text/javascript" src="<%=basePath %>ckeditor/ckeditor.js"></script>
	<script type="text/javascript">
    var dateSkin="blue";
	$(document).ready(function(){
		$("#starttime").focus(function(){
			WdatePicker({skin:dateSkin,readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:00'})
		});
		$("#endtime").focus(function(){
			WdatePicker({skin:dateSkin,readOnly:true,dateFmt:'yyyy-MM-dd HH:mm:00'})
		});
	});	
</script>
	
	
</head>

<body>

<form action="record_saveRecord.action" method="post">
	<div class="formbody">
		<div class="formtitle"><span>职工基本信息</span></div>
		<ul class="forminfo">
		    <li>
				<label>申请类别</label>
				<select class="dfinput"  name="type" >
					<option value="1">事假</option>
					<option value="2">年假</option>
					<option value="3">病假</option>
				</select>
			</li>
			<li>
				<label>起止时间</label>
				<input name="starttime" type="text" class="dfinput" id="starttime"/>--
				<input name="endtime" type="text" class="dfinput" id="endtime"/>
				<i></i>
			</li>
			
			<li>
				<label>备注</label>
				<textarea name="reason" cols="20" rows="2" class="ckeditor"></textarea>
			</li>
			<!-- <li>
			    <label>联系电话</label>
			    <input name="tel" value="" type="text" class="dfinput"/>
			</li> -->
			<li>
				<label>&nbsp;</label>
				<input name="" type="submit" class="btn" value="确认保存"/>
			</li>
		</ul>
	</div>
</form>

</body>
</html>
	