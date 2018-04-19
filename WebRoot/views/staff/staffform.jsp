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
	<%-- <script type="text/javascript" src="<%=basePath %>plugins/jQuery/jquery.js"></script>
	<script type="text/javascript" src="<%=basePath %>js/validate.js"></script> --%>
	<script src="<%=basePath %>jquery-validation-1.14.0/jquery.js"></script>
	<script src="<%=basePath %>jquery-validation-1.14.0/jquery.validate.min.js"></script>
	<script src="<%=basePath %>jquery-validation-1.14.0/messages_zh.js"></script>
<script>
/* $.validator.setDefaults({
    submitHandler: function(form) {
      //alert("提交事件!");
      form.submit();   //提交表单   
    }
});
$().ready(function() {
    $("#myform").validate();
}); */
</script>

	<script type="text/javascript"> 
	   $().ready(function(){
		   
		   jQuery.validator.addMethod("isPhone", function(value,element) { 
			   var length = value.length; 
			   var mobile = /^(((13[0-9]{1})|(15[0-9]{1}))+\d{8})$/; 
			   var tel = /^\d{3,4}-?\d{7,9}$/; 
			   return this.optional(element) || (tel.test(value) || mobile.test(value)); 

			 }, "请正确填写您的联系电话"); 
		   
		   
            var validate = $("#myform").validate({
                debug: true, //调试模式取消submit的默认提交功能   
                focusInvalid: false, //当为false时，验证无效时，没有焦点响应  
                onkeyup: false,   
                submitHandler: function(form){   //表单提交句柄,为一回调函数，带一个参数：form   
                    alert("提交表单");   
                    form.submit();   //提交表单   
                },   
                
                rules:{
                    name:{
                        required:true
                    },
                    bh:{
                    	required:true
                    },
                    loginname:{
                    	required:true
                    },
                    email:{
                        required:true,
                        email:true
                    },
                    password:{
                        required:true,
                        rangelength:[3,10]
                    },
                    tel:{
                        required:true,
                        isPhone:true
                    }
                },
                messages:{
                    name:{
                        required:"必填"
                    },
                    email:{
                        required:"必填",
                        email:"E-Mail格式不正确"
                    },
                    password:{
                        required: "不能为空",
                        rangelength: $.validator.format("密码最小长度:{0}, 最大长度:{1}。") 
                    }                                  
                }
                          
            });    
    
        });
	   
  </script>
  <script type="text/javascript">
    function isExist(bh){
        var bh=bh.value;
        alert(bh);
        $.ajax({
          url:"${pageContext.request.contextPath}/staff_isExist.action",
          type:"post",
          data:{'bh':bh},
          dataType:'json',
          success:function(msg){
            alert(msg);
          }
        });
    }
  </script>
	
</head>

<body>

<form action="staff_saveStaff.action" method="post" name="myform" id="myform">
	<div class="formbody">
		<div class="formtitle"><span>职工基本信息</span></div>
		<ul class="forminfo">
			<li>
				<label for="name" class="lab">职工姓名</label>
				<input name="name" type="text" class="dfinput" id="name" />
			</li>
			<li>
				<label class="lab">职工工号</label>
				<input name="bh" type="text" class="dfinput" onblur="isExist(this)"/>
				<i></i>
			</li>
			<li>
				<label class="lab">登录名</label>
				<input name="loginname" type="text" class="dfinput" />
				<i></i>
			</li>
			<li>
				<label class="lab">密码</label>
				<input name="password" type="password" class="dfinput" id="password"/>
				<i></i>
			</li>
			<li>
				<label class="lab">性别</label>
				<cite>
					<input name="sex" type="radio" value="男" checked="checked" />男&nbsp;&nbsp;&nbsp;&nbsp;
					<input name="sex" type="radio" value="女" />女
				</cite>
			</li>
			<li>
				<label class="lab">住址</label>
				<input name="address" type="text" class="dfinput"/>
				<i></i>
			</li>
			
			<li>
				<label class="lab">联系方式</label>
				<input name="tel" type="text" class="dfinput" />
				<i></i>
			</li>
			
			<li>
				<label class="lab">email</label>
				<input name="email" type="text" class="dfinput" id="email"/>
				<i></i>
			</li>
			
			<li>
				<label class="lab">部门</label>
				<!--  name=" userInfo.department.depId"-->
				<%-- <select class="dfinput"  name="deptid" >
					<s:iterator value="dlist">
						<option value="${depid}">${depname}</option>
					</s:iterator>
				</select> --%>
				<select class="dfinput"  name="dept.depid" >
					<s:iterator value="dlist">
						<option value="${depid}">${depname}</option>
					</s:iterator>
				</select>
			</li>
			<li>
				<label class="lab">备注</label>
				<textarea name="remark" cols="" rows="" class="textinput"></textarea>
			</li>
			<li>
				<label>&nbsp;</label>
				<input name="" type="submit" class="btn" value="确认保存"/>
			</li>
		</ul>
	</div>
</form>
</body>
</html>
	