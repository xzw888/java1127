<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%-- <%@taglib uri="/WEB-INF/lib/pager-taglib.jar" prefix="pg"%> --%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
<head>


<title>My JSP 'userList.jsp' starting page</title>
<base href="<%=basePath %>">
<meta http-equiv="pragma" content="no-cache">
<meta http-equiv="cache-control" content="no-cache">
<meta http-equiv="expires" content="0">
<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
<meta http-equiv="description" content="This is my page">
<link href="<%=basePath %>css/style.css" rel="stylesheet"
	type="text/css" />

<link rel="stylesheet" type="text/css" href="extjs/resources/css/ext-all.css" />
<script type="text/javascript" src="extjs/ext-all.js"></script>
<script type="text/javascript">
  
  
  
  function deleteItem() {
  alert("aaaaaaaaaaa");
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
			alert("请选择需要删除的数据！");
			return;
		}	
		
		//删除提示
		//location.href='system/addAction_deleteUser.do?id=<s:property value="%{#user.id}"/>'
		//window.location.href="user_deleteUser.do?UId="+UId;
		if (window.confirm("确认删除？")) {
			with(document.getElementById("userForm")) {
				action="staff_deleteStaff.action";
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
		
		window.self.location = "user_editUser.do?id=" + selectFlags[index].value;
		
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


	<form name="userForm" action="" id="userForm" method="post">
		<pg:pager maxPageItems="2" url="staff_stafflist.action"
			maxIndexPages="10" index="center">
			<table class="tablelist">
				<tr>
					<td><input type="checkbox" name="ifAll" onClick="checkAll()">
					</td>
					<td>职工姓名</td>
					<td>职工编号</td>
					<td>性别</td>
					<td>住址</td>
					<td>联系方式</td>
					<!-- <td>
						操作
					</td> -->
				</tr>

				<c:forEach items="${slist}" var="st">
					<pg:item>
						<tr>

							<td><input type="checkbox" name="selectFlag"
								class="checkbox1" value="${st.id }"></td>
							<td>${st.name}</td>
							<td><a href="<%=basePath %>userShow?userName=${st.bh}">${st.bh }</a>
							</td>
							<td>${st.sex}</td>
							<td class="rd8">${st.address }</td>
							<td class="rd8">${st.tel}</td>
						</tr>
					</pg:item>
				</c:forEach>


				<tr>
					<td colspan="2"><input name="btnDelete" class="button1"
						type="button" id="btnDelete" value="删除" onClick="deleteItem()"></td>
					<td colspan="2"><input name="btnModify" class="button1"
						type="button" id="btnModify" value="修改" onClick="modifyUser()"></td>
					<td colspan="2"><input name="btnThrough" class="button1"
						type="button" id="btnThrough" value="审批" onClick="ThroughUser()"></td>

				</tr>
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
								<a href="${pageUrl}">[${pageNumber }]</a>
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
			</table>
		</pg:pager>
	</form>

</body>
</html>
