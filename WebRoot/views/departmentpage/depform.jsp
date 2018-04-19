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
	<script src="<%=basePath %>jquery-validation-1.14.0/jquery.js"></script>
	<script src="<%=basePath %>jquery-validation-1.14.0/jquery.validate.min.js"></script>	
	<script src="<%=basePath %>jquery-validation-1.14.0/messages_zh.js"></script>
	<!-- <script type="text/javascript"> 
	    $(document).ready(function() {
              var validate = $("#myformd").validate({
                debug: true, //调试模式取消submit的默认提交功能   
                //errorClass: "label.error", //默认为错误的样式类为：error   
                focusInvalid: false, //当为false时，验证无效时，没有焦点响应  
                onkeyup: false,   
                submitHandler: function(form){   //表单提交句柄,为一回调函数，带一个参数：form   
                    alert("提交表单");   
                    form.submit();   //提交表单   
                },   
                
                rules:{
                	depname:{
                        required:true
                    },
                    depNo:{
                    	required:true
                    },
                    depdesc:{
                    	required:true
                    }
                },
                messages:{
                	depname:{
                        required:"必填"
                    },
                    depNo:{
                        required:"必填"
                    },
                    depdesc:{
                        required: "不能为空"
                    }                                  
                }
                          
            });    
    
	    });
	   
  </script> -->
  <!-- <script>
	$.validator.setDefaults({
	    submitHandler: function() {
	      alert("提交事件!");
	    }
	});
	$().ready(function() {
	    $("#myformd").validate();
	});
  </script> -->
  <script type="text/javascript">
     $().ready(function() {
		// 在键盘按下并释放及提交后验证提交表单
		  $("#myformd").validate({
		    rules: {
		    	depname: "required",
		    	depNo: "required",
		    	depdesc: "required"
		    },
		    messages: {
		    	depname: "请输入您的名字",
		    	depNo: "请输入您的姓氏",
		    	depdesc:"请输入用户名"
		    }
     })
  })	
  </script>
</head>

<body>

<form action="dept_addDep.action" method="post" name="myformd" id="myformd">
	<div class="formbody">
		<div class="formtitle"><span>部门信息</span></div>
		<ul class="forminfo">
			<li>
				<label>部门名称</label>
				<input name="depname" type="text" class="dfinput" />
				<i></i>
			</li>
			<li>
				<label>部门编号</label>
				<input name="depNo" id="depNo" type="text" class="dfinput"  onblur="checkisExist()"/>
				<i></i>
			</li>
			<li>
				<label>部门描述</label>
				<input name="depdesc" type="text" class="dfinput" />
				<i></i>
			</li>
			<li>
				<label>&nbsp;</label>
				<input type="submit" class="btn" value="确认保存"/>
			</li>
		</ul>
	</div>
</form>
<%-- <script type="text/javascript" src="<%=basePath %>plugins/jQuery/jquery.js"></script> --%>
<script type="text/javascript">
function checkisExist(){
      var deptNo=$("#depNo").val();
	  $.ajax({
		type:'post',
		url:'${pageContext.request.contextPath}/dept_checkisExist.action',
		data:{'depNo':deptNo}, 
		dataType:'json',
		success:function(msg){
		  //alert(msg);	
		  if(msg==1||mag=="1"){
			  alert("部门编号已存在!");
			  $("#depNo").focus();
		  }else{
		  }
		},
		/* error:function(){   
            alert("ajax 失败");   
        }  */  
		
	});
}
</script>
</body>
</html>
	