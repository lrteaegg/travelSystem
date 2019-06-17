<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title></title>
<link href='../dist/css/bootstrap.min.css' rel="stylesheet">
<link href='css/register.css' rel="stylesheet">
<script type="text/javascript" src='../jquery-3.1.1.min.js'></script>
<script type="text/javascript" src='../dist/js/bootstrap.min.js'></script>
<script type="text/javascript">
var length = 0;
$(function () {
	
	$(".register-info input").popover({
		html:true
	});
	
	$("input").blur(function(){
		var code = $(this).val();
		var type = $(this).attr("id");
		//判断输入的什么
		if(type == 'username')
			var reg = /^[\w_]{5,10}$/;//用户正则
		else if(type == 'psw' || type == 'psw2'){
			var reg = /^(?:\d+|[a-zA-Z]+|[!@#$%^&*]+){6,12}$/;//密码正则
		}	
		else if(type == 'email')
			var reg = /^[\w_-]+@([\w])+((.[\w_-]{2,3}){1,2})+$/; //邮箱正则
		else if(type == 'phone')
			var reg = /^1[3|4|5|7|8]\d{9}$/;//手机号码正则
				
		$(this).popover('hide');
		if(reg.test(code)){
			if(type == 'psw2'){
				if(code == $('#psw').val()){
					$(this).parent().children("span").eq(1).hide();
					$(this).parent().children("span").eq(0).show('slow');
					console.log("密码正确");
					$(this).attr("data-content","输入正确");
					length++;
					return true;
				}else{
					$(this).parent().children("span").eq(0).hide();
					$(this).parent().children("span").eq(1).show('slow');	
					console.log("密码错误	");
					$(this).attr("data-content","输入错误");
					return false;
				}
			}
			
			//console.log("1230");
			$(this).parent().children("span").eq(1).hide();
			$(this).parent().children("span").eq(0).show('slow');			
			length++;
			return true;
		}else{
			//$(".glyphicon-remove").show();
			$(this).parent().children("span").eq(0).hide();
			$(this).parent().children("span").eq(1).show('slow');
			return false;
		}
	});	
	/* $("#form-bottom").children("button").click(function(){
		var flag = confirm("你确定要提交吗？");
		if(flag){
			window.location.replace("index.html");
		}else{
			
		}		
	}); */
});


</script>
</head>
<%
	String failed = (String)session.getAttribute("login_failed");
	if(failed!=null){
		%>
		<script type="text/javascript">
			alert("<%=failed %>");
		</script>
		<%
	}
		session.removeAttribute("login_failed");
	
%>
<body>


	<div class="center-container">

		<div class="container">

			<div class="register">

				<div class="container-register">
					<div class="register-body ">
						<div class="register-heading">
							<a  href = "index.jsp" ><span class = "glyphicon glyphicon-home "></span></a>
							<h1>新用户注册</h1>
							<a data-toggle="modal" data-target="#myModal">直接登录</a>
						</div>
						<div class="register-info">
						
							<form action="addUser.do" method="post">
							
								<div class = "form-group" >
									<label for = "username">用户名：</label>
									 <input type="text" id="username" placeholder="用户名"  name = "uname"
									 	data-placement="right" data-trigger="focus"
										data-content="用户名长度5到10位" value="${user.uname }">
									<span class = "glyphicon glyphicon-ok " style="color:green;"></span> 
									<span class = "glyphicon glyphicon-remove" style="display:none;color:red;"></span>
								</div>
																			
							
								<div class = "form-group">
									<label for = "psw">密码：</label>
									<input type="password" id="psw" placeholder="密码" name = "pwd"
									 	data-placement="right" data-trigger="focus" 
										data-content="密码长度6到12位" value="${user.pwd }">
									<span class = "glyphicon glyphicon-ok " style="color:green;"></span> 
									<span class = "glyphicon glyphicon-remove" style="display:none;color:red;"></span>
								</div>
									
								<div class = "form-group">
									<label for = "psw2">确认密码：</label>
									 <input type="password" id="psw2" placeholder="确认密码"
									 	data-placement="right" data-trigger="focus"
										data-content="重新输入">
										<span class = "glyphicon glyphicon-ok " style="color:green;"></span> 
									<span class = "glyphicon glyphicon-remove" style="display:none;color:red;"></span>
								</div>
								<div class = "form-group">
									<label for = "email">邮箱：</label>
									 <input type="text" id="email" placeholder="邮箱"  name= "email"
									 	data-placement="right" data-trigger="focus"
										data-content="请输入合法的邮箱地址"  value="${user.email }">
										<span class = "glyphicon glyphicon-ok " style="color:green;"></span> 
									<span class = "glyphicon glyphicon-remove" style="display:none;color:red;"></span>
								</div>
								<div class = "form-group">
									<label for = "phone">电话：</label>
									 <input type="text" id="phone" placeholder="电话号码" name = "phone"
									 	data-placement="right" data-trigger="focus"
										data-content="请输入合法的手机号"  value="${user.phone }">
										<span class = "glyphicon glyphicon-ok " style="color:green;"></span> 
									<span class = "glyphicon glyphicon-remove" style="display:none;color:red;"></span>
								</div>
								
								<div id = "form-bottom">
									<button type="submit" class="btn btn-default" onclick='return confirm("你确定要提交吗？");'>注册</button>
								</div>								
							</form>
						</div>							
					</div>
				</div>
			</div>
		</div>

	</div>
			<!-- Modal -->
	<%@ include file="model/login.jsp" %>	
	
</body>
</html>








