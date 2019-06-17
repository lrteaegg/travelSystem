<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户个人中心 </title>
<link href = '../dist/css/bootstrap.min.css' rel = "stylesheet">
<link href = 'css/footer.css' rel = "stylesheet">
<link href = 'css/header.css' rel = "stylesheet">
<script type="text/javascript" src = '../xjquery-3.1.1.min.js'></script>
<script type="text/javascript" src = '../dist/js/bootstrap.min.js'></script>
<style type="text/css">
.border{
	border: 1px solid red;
}
*{
	margin: 0px;
	padding: 0px; 

}
body{
		background-color: #f5f5f5;
}
.order{
	width: 1000px;
	margin: 0px auto;
	padding-top: 20px;
}
.leftsidebar_box{
	margin-top:20px;
	float: left;
	width: 200px;	
}
.rightsidebar_box{
	width: 900px;
	height: 480px;
	margin-top: 20px;
	margin-left:200px;
	padding-left: 20px;
	padding-right: 20px;
	background-color: #fff;
}
.pagination{
	float:right;
}
li{
	list-style: none;
}
.menu{
	background-color: rgb(10, 161, 237);
	line-height: 45px;
	padding-left: 15px;
	
	color: #f5f5f5;
	font-size: 14px;
	font-weight: bold;
	font-family: "黑体";
	background-repeat: no-repeat;
	background-position: 10px center;
	cursor: pointer;
	margin-bottom: 5px;
	
}
.submenu {
	background-color: #fff;
	padding-left: 40px;
	padding-top: 18px;
	padding-bottom: 15px;
}
.submenu a {
	color: #808080;
	line-height: 30px;
	font-size: 15px;
	font-family: "黑体";
}
	
</style>
<script type="text/javascript">
	$(function(){
		//关闭所有二级菜单url
		$(".submenu").css("display","none");
		//选中的一级菜单li，添加点击实践
		$(".menu").click(function(){
			//如果前一级菜单li，同级相邻的下一个二级菜单ul是隐藏的进入if块
			if($(this).next(".submenu").css("display") == "none"){
				$(this).next(".submenu").slideDown(1000)
				.siblings("ul").slideUp(1000);
				$("#sib").attr("class","glyphicon glyphicon-chevron-right");
				$(this).children('span').eq(1).attr("class","glyphicon glyphicon-chevron-down");
			}else{
				$(this).next(".submenu").slideUp(1000);
				$(this).children('span').eq(1).attr("class","glyphicon glyphicon-chevron-right");
			}
		});
	});
</script>
</head>
<body>
<header class = 'container'>
		<nav class = "navbar navbar-default">
			<div class = "container-fluid">
				<div class = "navbar-header">
					<a class="navbar-brand" href="index1.jsp">开心旅游</a>
				</div>
	 
				<ul class="nav navbar-nav navbar-right">
					<!-- 搜索框 -->
					 <form class="navbar-form navbar-left">
		        <div class="form-group">
		          <input type="text" class="form-control" placeholder="订单搜索">
		        </div>
		        <button type="submit" class="btn btn-primary">订单搜索</button>
	     		</form>
					<li><a href="travelinfo.html">旅游</a></li>	
					<li><a href="hotelsearch.html">酒店</a></li>	
					<li><a href="#">飞机</a></li>	
					<!-- 如果没有登录 -->
					<%
					Object object = session.getAttribute("user");
					if(object == null) {
					%>
						<script type="text/javascript">
							alert("<%="请登录" %>");
							window.location="index.jsp";
						</script>
					<%
					}else {
						%>
						<%@ include file="model/header_info.jsp" %>
						<%
					}
					%>
						
				</ul>				
			</div>
		</nav>	
</header>
	<div class = "container ">
		<div class = "leftsidebar_box">
			<ul>
				<li class = "menu cmenu1">
					 <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
					 个人中心
					  <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
				</li>
				<ul class = "submenu" style='display: none'>
					<li><a href="###" onclick="showAtRight('info/my_info.jsp')">我的信息</a></li>
					<li><a href="###" onclick="showAtRight('info/my_msg.jsp')">消息提醒</a></li>
					<li><a href="###" onclick="showAtRight('info/my_security.jsp')">用户安全</a></li>
				</ul>
				<li class = "menu cmenu2">
					 <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
					 我的订单
					 <span class="glyphicon glyphicon-chevron-right"aria-hidden="true"></span>
				</li>
				<ul class = "submenu" style="display: none">
					<li><a href="###" onclick="showAtRight('order/all_order.jsp')">全部订单</a></li>
					<li><a href="###" onclick="showAtRight('order/hotel_order.jsp')">酒店订单</a></li>
					<li><a href="###" onclick="showAtRight('order/ticket_order.jsp')">旅游度假订单</a></li>
					<li><a href="###" onclick="showAtRight('order/travel_order.jsp')">机票订单</a></li>
					
				</ul>
				<li class = "menu cmenu3">
					 <span class="glyphicon glyphicon-list" aria-hidden="true"></span>
					 钱包
					 <span class="glyphicon glyphicon-chevron-right"  aria-hidden="true"></span>
				</li>
				<ul class = "submenu" style="display: none">
					<li><a href="###" onclick="showAtRight('wallet/my_wallet.jsp')">我的钱包</a></li>
					<li><a href="###" onclick="showAtRight('wallet/coupons.jsp')">礼品卡</a></li>
					<li><a href="###" onclick="showAtRight('wallet/bank_car.jsp')">银行卡</a></li>
					<li><a href="###" onclick="showAtRight('wallet/security_center.jsp')">安全中心</a></li>
				</ul>
			</ul>
			
		</div>
		<div id = "content" class = "rightsidebar_box" >
			<%@ include file="info/my_info.jsp" %>
		</div>
			 
	</div>
	
<%@ include file="model/footer.jsp" %>
<script type="text/javascript">
		
		/*
		 * 利用div实现左边点击右边显示的效果（以id="content"的div进行内容展示）
		 * 注意：
		 *   ①：js获取网页的地址，是根据当前网页来相对获取的，不会识别根目录；
		 *   ②：如果右边加载的内容显示页里面有css，必须放在主页（即例中的index.jsp）才起作用
		 *   （如果单纯的两个页面之间include，子页面的css和js在子页面是可以执行的。 主页面也可以调用子页面的js。但这时要考虑页面中js和渲染的先后顺序 ）
		*/
		function showAtRight(url) {
			var xmlHttp;
			
			if (window.XMLHttpRequest) {
				// code for IE7+, Firefox, Chrome, Opera, Safari
				xmlHttp=new XMLHttpRequest();	//创建 XMLHttpRequest对象
			}
			else {
				// code for IE6, IE5
				xmlHttp=new ActiveXObject("Microsoft.XMLHTTP");
			}
		
			xmlHttp.onreadystatechange=function() {		
				//onreadystatechange — 当readystate变化时调用后面的方法
				
				if (xmlHttp.readyState == 4) {
					//xmlHttp.readyState == 4	——	finished downloading response
					
					if (xmlHttp.status == 200) {
						//xmlHttp.status == 200		——	服务器反馈正常			
						
						document.getElementById("content").innerHTML=xmlHttp.responseText;	//重设页面中id="content"的div里的内容
						executeScript(xmlHttp.responseText);	//执行从服务器返回的页面内容里包含的JavaScript函数
					}
					//错误状态处理
					else if (xmlHttp.status == 404){
						alert("出错了☹   （错误代码：404 Not Found），……！"); 
						/* 对404的处理 */
						return;
					}
					else if (xmlHttp.status == 403) {  
						alert("出错了☹   （错误代码：403 Forbidden），……"); 
						/* 对403的处理  */ 
						return;
			        }
					else {
						alert("出错了☹   （错误代码：" + request.status + "），……"); 
						/* 对出现了其他错误代码所示错误的处理   */
						return;
					}   
				} 
		            
			  }
			
			//把请求发送到服务器上的指定文件（url指向的文件）进行处理
			xmlHttp.open("GET", url, true);		//true表示异步处理
			xmlHttp.send();
		}		
		</script>
	



</body>
</html>





