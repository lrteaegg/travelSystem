<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>错误</title>
<link href = '../dist/css/bootstrap.min.css' rel = "stylesheet">
<link rel="stylesheet" href="css/animate.min.css">
<link rel = "stylesheet" href = "css/footer.css">
<script type="text/javascript" src = '../jquery-3.1.1.min.js'></script>
<script type="text/javascript" src = '../dist/js/bootstrap.min.js'></script>
<script type="text/javascript" src = 'js/wow.min.js'></script>

<style type="text/css">
	.msg{
		margin:0px auto;
	}
	.msg span{
		color: red;
		font-weight: bolder;
		font-size: 20px;
		
	}
	.message{
	
		width:1000px;
		min-height: 300px;
		
	}
</style>
</head>
<body>
<header>
	<div class = "container">	
			<nav class = "navbar navbar-default">
				<div class = "container-fluid">
					<div class = "navbar-header">
						<a class="navbar-brand" href="#">开心旅游</a>
					</div>
					
					<ul class="nav navbar-nav navbar-right">
						<li><a href="travelinfo.html">旅游</a></li>	
						<li><a href="htelsearch.html">酒店</a></li>	
						<li><a href="#">机票</a></li>	
						<li class = "user_info">
							<div class="dropdown ">
							    <!-- <button type="button" class="btn dropdown-toggle" id="dropdownMenu" data-toggle="dropdown">主题 -->
							    	<img alt="" src="" id="dropdownMenu" data-toggle="dropdown">
							    </button>
							    <ul class="dropdown-menu dropdown-menu-right" role="menu">
							        <li role="presentation">
							            <a role="menuitem" tabindex="-1" href="info_mana.html">个人中心</a>
							        </li>
							        <li role="presentation">
							            <a role="menuitem" tabindex="-1" href="info_mana.html">我的订单</a>
							        </li>
							        <li role="presentation">
							            <a role="menuitem" tabindex="-1" href="#">我的钱包</a>
							        </li>
							        <li role="presentation" class="divider"></li>
							        <li role="presentation">
							            <a role="menuitem" tabindex="-1" href="#">我的优惠卷</a>
							        </li>
							    </ul>
							</div>
						</li>				
							
					</ul>				
				</div>
			</nav>
	</div>
</header>
<div class = "message">
	<% 
		String message = request.getParameter("message");
	%>
	<div class = "msg">
			<span>
				<%=message %>
			</span>
	</div>

</div>

	
	
	<footer>
			<div class="row">		
	 			<div class="col-md-4 footer-left">
	 				<h3>关于我们</h3>
	 				<ul>
	 					<li data-placement="left" data-trigger = 'hover'><span class="glyphicon glyphicon-qrcode" ></span></li>
	 					<li><span class="glyphicon glyphicon-briefcase"></span></li>
	 					<li><span class="glyphicon glyphicon-globe"></span></li>
	 					<li><span class="glyphicon glyphicon-bullhorn"></span></li>
	 				</ul>
	 				<p>To take a trivial example, which of us ever undertakes laborious 
	 				physical exercise, 
	 				except to obtain some
	 				 advantage from it.</p>
	 			</div>
			  <div class="col-md-4 footer-center">
			  	<h3>导航指南</h3>
		  		<ul>
 					<li>
 						<span class="glyphicon glyphicon-hand-right"></span>
 						<a href = "#">旅游资讯</a>
 					</li>
 					<li>
 						<span class="glyphicon glyphicon-hand-right"></span>
 						<a href = "#">加盟合作</a>
 					</li>
 					<li>
 						<span class="glyphicon glyphicon-hand-right"></span>
 						<a href = "#">用户协议</a>
 					</li>
 					<li>
 						<span class="glyphicon glyphicon-hand-right"></span>
 						<a href = "#">特殊服务</a>
 					</li>
 				</ul>
			  </div>
			  		
			  <div class="col-md-4 footer-right">
			  		<h3>联系我们</h3>
			  			<div id = "send">
			  				<form action="sendMessage">
				  				<input type="email" class="form-control" id="exampleInputEmail1" placeholder="Email" name="email">
				  				<button type="submit" class="btn btn-primary btn-lg btn-block">Send</button>
			  				</form>
			  			</div>		  		
			  		<p>给我你的问题，我们会第一时间通知你</p>
			  </div>
			</div>
		</footer>
	
</body>
</html>