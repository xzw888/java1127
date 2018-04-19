<%@ page language="java" import="java.util.*" pageEncoding="UTF-8" contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib uri="/WEB-INF/lib/pager-taglib.jar" prefix="pg"%> 
<%
	String path = request.getContextPath() + "/";
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort() + path;
%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<base href="<%=basePath%>"/>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
	<title>无标题文档</title>
	<link href="<%=basePath %>css/style.css" rel="stylesheet" type="text/css" />
	<style type="text/css">
	  body{font-size:1em}
	</style>
	<script type="text/javascript" src="extjs/ext-all.js"></script>
    <script type="text/javascript">
  function deleteItem() {
         
		var selectFlags = document.getElementsByName("selectFlag");
		alert(selectFlags.length);
		var selectvalue="";
		alert(selectFlags);
		var flag = false;
		for (var i=0; i<selectFlags.length; i++) {
			if (selectFlags[i].checked) {
			    //已经有选中的checkbox
				flag = true;
			    //alert("id:"+selectFlags[i].value);
			    if(selectvalue!=null&&selectvalue!=""){
			    	selectvalue+=","+selectFlags[i].value;
			    }else{
			    	selectvalue+=selectFlags[i].value;
			    }
			    //alert(selectvalue);
				//break;
			}
		}
		
		if (!flag) {
			alert("请选择需要删除的数据！");
			return;
		}	
		
		//删除提示
		alert(selectvalue);
		if (window.confirm("确认删除？")) {
			with(document.getElementById("userForm")) {
				action="dept_delteDept.action?id="+selectvalue;
				method="post";
				submit();
			}
		}
  }	
	function checkAll() {
	    var selectFlags = document.getElementsByName("selectFlag");
		for (var i=0; i<selectFlags.length; i++) {
			//selectFlags[i].checked = document.getElementById("ifAll").checked;
			//采用getElementsByName代替getElementById
			selectFlags[i].checked = document.getElementsByName("ifAll")[0].checked;
		}
	}
	
	
	function modifyUser() {
	    
		var selectFlags = document.getElementsByName("selectFlag");
		//计数器
		var count = 0;
		//记录选中的checkbox索引号
		var index = 0;
		for (var i=0; i<selectFlags.length; i++) {
			if (selectFlags[i].checked) {
			    //记录选中的checkbox
				count++;
				index = i;
			}
		}
		if(count == 0) {
			alert("请选择需要修改的数据！");
			return;
		}
		if (count > 1) {
			alert("一次只能修改一个用户！");
			return;
		}
		alert(selectFlags[index].value);
		window.self.location = "dept_editDept.action?sid=" + selectFlags[index].value;
	}
	
	
	function ThroughUser(){
	alert("shenpi");
	
		var selectFlags = document.getElementsByName("selectFlag");
		var flag = false;
		for (var i=0; i<selectFlags.length; i++) {
			if (selectFlags[i].checked) {
			    //已经有选中的checkbox
				flag = true;
				break;
			}
		}
		if (!flag) {
			alert("请选择需要审批的数据！");
			return;
		}
		if (window.confirm("确认审批？")) {
			with(document.getElementById("userForm")) {
				action="user_passUser.do";
				method="post";
				submit();
			
              }
			}	
	}
	
	function exit(){
	alert("确定要退出");
	if(window.confirm("确定要退出？")){
	   with(document.getElementById("userForm")){
	   action="login?method=exit";
	   method="post";
	   submit();
	   }
	  }
	}
  </script>

</head>

<body>

<div class="formbody">
  <div class="formtitle" style="cursor: pointer;" id="formtitle"><span>职工列表</span></div>
  <form name="userForm" action="" id="userForm" method="post">
	<div class="rightinfo">
	    <!-- maxPageItems:每页显示条数;url:被分页的集合;export:输出值,主要用来在分页栏显示;maxIndexPages:页面显示的页数;index:居中 -->
		<pg:pager maxPageItems="3" url="dept_depList.action" export="offset,currentPageNumber=pageNumber"
			maxIndexPages="10" index="center">
		<table class="tablelist">
			<thead>
				<tr>
					<td><input type="checkbox" name="ifAll" onClick="checkAll()">
					</td>
					<td>部门编号</td>
					<td>部门名称</td>
					<td>部门描述</td>
					<!-- <td>
						操作
					</td> -->
				</tr>
			</thead>
			<tbody>
			
				<c:forEach items="${dlist}" var="d">
					<pg:item>
						<tr>

							<td><input type="checkbox" name="selectFlag"
								class="checkbox1" value="${d.depid }"></td>
							<td>${d.depNo}</td>
							<td>${d.depname}</td>
							<td class="rd8">${d.depdesc}</td>
						</tr>
					</pg:item>
				</c:forEach>
				
				<tr>
					<td colspan="6" align="center" height="30px;">
					<pg:index>
							<pg:first>
								<a href="${pageUrl }">第一页</a>
							</pg:first>
							<pg:prev>
								<a href="${pageUrl}">上一页</a>
							</pg:prev>
							<pg:pages>
								<%-- <a href="${pageUrl}">${currentPageNumber}[${pageNumber }]</a> --%>
								<c:choose>
							         <%--当循环页码是当前页码，则该页码不可以导航，并显示为红色--%>
							      <c:when test="${currentPageNumber eq pageNumber}">  
							        <font color="red">[${pageNumber }]</font>  
							      </c:when>
							     
							      <%-- 当循环页码不是当前页码，则该页码可以导航 --%>
							      <c:otherwise>  
							        <a href="${pageUrl }">[${pageNumber }]</a>  
							      </c:otherwise>  
							    </c:choose>
							</pg:pages>
							<pg:next>
								<a href="${pageUrl}">下一页</a>
							</pg:next>
							<pg:last>
								<a href="${pageUrl }">最后一页</a>
							</pg:last>
						</pg:index>
					</td>
				</tr>
			</tbody>
		</table>
		</pg:pager>
	</div>
	<div>
	   <table style="font-size: 40px">
	     <tr>
					<td colspan="5">
					</td>
					<td>
					    <input name="btnDelete" class="button1"
						type="button" id="btnDelete" value="删除" onClick="deleteItem()"/>
					    <input name="btnModify" class="button1"
						type="button" id="btnModify" value="修改" onClick="modifyUser()"/>
					</td>
	     </tr>
	   </table>
	</div>
</form>

</body>
</html>

