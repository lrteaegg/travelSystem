<%@ page contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>开心旅游</title>
<link href = '../dist/css/bootstrap.min.css' rel = "stylesheet">
<link href = 'css/header.css' rel = "stylesheet">
<link rel="stylesheet" href="css/animate.min.css">
<link rel = "stylesheet" href = "css/footer.css">
<script type="text/javascript" src = '../jquery-3.1.1.min.js'></script>
<script type="text/javascript" src = '../dist/js/bootstrap.min.js'></script>
<script type="text/javascript" src = 'js/wow.min.js'></script>

<script type="text/javascript">
	$(function(){
		new WOW().init();
		var carousel_inner = $(".carousel-inner");
		var item = $('<div class="item active"></div>');
		var img = $('<img>');
		img.attr('src','images/1.jpg');	
		//添加到代码中
		item.append(img);
		carousel_inner.append(item);
		for (var i = 2; i < 10; i++) {
			var item = $('<div class="item"></div>');
			var img = $('<img>');
			img.attr('src','images/'+i+'.jpg');
			console.log(i);	
			//添加到代码中
			item.append(img);
			carousel_inner.append(item);
		} 		
	/* 	//加载时候动态效果
		$(".chara").children().eq(0).animate({"left":"50px"},500).animate({"left":"0px"},1000);
		$(".chara").children().eq(1).animate({"left":"50px"},200).animate({"left":"0px"},1000);
		$(".chara").children().eq(2).animate({"left":"50px"},500).animate({"left":"0px"},1000);
		 */
		//鼠标触发		
		$(".thumbnail").hover(function(){
			$(this).children().eq(0).stop().slideUp(200);
			$(this).children().eq(1).stop().slideDown(200);
			console.log(this);
		},function(){
			$(this).children().eq(0).stop().slideDown(200);
			$(this).children().eq(1).stop().slideUp(200);
		}); 
		
	});
</script>
<style type="text/css">
*{
	margin:0px;
	padding:0px;
}

	.body{
		background-color:#f5f5f5;
	}
	.fl1{
		margin: 0px auto;
		width:1000px;		
		padding: 25px;
		margin-bottom:20px;
		background-color: #fff;	
	}
	.fl1 row div{
		position: relative;
	}
	.carousel-header{
		padding-bottom: 20px;
	}
	.characteristic{
		padding-top: 25px;
	}
	.chara div{
		position: relative;
	}
	.fl2{
		
		margin: 0px auto;
		width:1000px;		
		padding: 25px;
		margin-bottom: 20px;
		background-color: #fff;
	}
	.header h3{
		text-align:center;
		line-height: 50px;
		color: #202020;
    font-size: 45px;
    font-family: 'Francois One', sans-serif;
    margin: 0;
	}
	.header p{
		font-size: 20px;
		display: block;
		text-align:center;
    margin: 0px auto;
    padding-top: 20px;
    width: 80%;
	}
	.information-grids{
		margin-top: 80px;	
	}
	.information-grids h3{
		color: #2DCB74;
	}
	.information-grids p{
		color: #ccc;
		font-size: 15px;
	}
	
	.fl3{
		text-align: center;
		margin: 0px auto;
		width:1000px;		
		height: 200px;
		padding-top: 30px;
		padding-bottom: 20px;
		margin-bottom: 20px;
		background-color: #fff;
	}
	.fl3>div{
		width: 120px;
    height:150px;
    float: left;
	}
	.fl3 img{
		width: 100px;
		height: 100px;		
	}
	.icon1{
		margin-left: 104px;
	}
	.icon2{
		margin-left: 104px;
	}
	.icon3{
		margin-left: 104px;
	}
	.icon4{
		margin-left: 104px;
	}

	/* 图片变大 */
	.big{
		font-size:20px;
	}
	
</style>

</head>
<body>
<header>
		<nav class = "navbar navbar-default">
			<div class = "container-fluid">
				<div class = "navbar-header">
					<a class="navbar-brand" href="index.jsp">开心旅游</a>
				</div>
				<ul class="nav navbar-nav navbar-right">
					<li><a href="hotelsearch.html">酒店</a></li>	
					<li><a href="travelinfo.html">攻略</a></li>	
					<li><a href="#">机票</a></li>	
					
					<!-- 如果没有登录 -->
					<%
					Object object = session.getAttribute("user");
					if(object == null) {
					%>
						<li><button type="button" class="btn btn-info navbar-btn" data-toggle="modal" data-target="#myModal">登录</button></li>
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
	<%@ include file="model/login.jsp" %>
<div class = "body">
	<div class = "fl1">
	<div class = "carousel-header header">
		<h3>最近热门地方</h3>
		<p>
			世界上所有的热门旅游地方等着你的到来
		</p>
	</div>
	<div id="carousel-example-generic" class="carousel slide" data-ride="carousel">
	  <!-- Indicators -->
	  <ol class="carousel-indicators">
	    <li data-target="#carousel-example-generic" data-slide-to="0" class="active"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="1"></li>
	    <li data-target="#carousel-example-generic" data-slide-to="2"></li>
	  </ol>
	
	  <!-- Wrapper for slides -->
	  <div class="carousel-inner" role="listbox">
	    
	  </div>
	
	  <!-- Controls -->
	  <a class="left carousel-control" href="#carousel-example-generic" role="button" data-slide="prev">
	    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>	    
	  </a>
	  <a class="right carousel-control" href="#carousel-example-generic" role="button" data-slide="next">
	    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
	  </a>
	</div>

			<div class="characteristic ">
				<div class="row chara">
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail wow rollIn" data-wow-delay="1s" data-wow-offset="30">
								<img src="images/1.jpg" alt="...">
								<img src="images/4.jpg" alt="..." style = "display:none;">							
							<div class="caption " >
								<h3>香港四日游</h3>
								<p>往返机，限量优惠，先到先得</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">购买</a> <a
										href="#" class="btn btn-default" role="button">加入购物车</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail wow bounceInDown" data-wow-delay="1s" data-wow-offset="30">
							<img src="images/2.jpg" alt="..." >
							<img src="images/4.jpg" alt="..." style = "display:none;">
							<div class="caption">
								<h3>以色列耶鲁撒冷</h3>
								<p>直飞以色列一地</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">购买</a> <a
										href="#" class="btn btn-default" role="button">加入购物车</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail wow bounceInRight" data-wow-delay="1s" data-wow-offset="30">
							<img src="images/3.jpg" alt="...">
							<img src="images/4.jpg" alt="..." style = "display:none;">
							<div class="caption">
								<h3>巴厘岛7日5晚</h3>
								<p>19999特价 东航直飞往返机票</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">购买</a> <a
										href="#" class="btn btn-default" role="button">加入购物车</a>
								</p>
							</div>
						</div>
					</div>
				</div>
			</div>
	
		</div>
	
	<div class = "fl2 wow bounce">
		<div class = "information-heading header">
			<h3>
				各种高级、舒适、经济的酒店
			</h3>				
			<p>
				这里有最全的酒店旅馆信息，高档奢华，经济实惠，主题有趣等，总有一个适合你
			</p>
		</div>
		<div class = "information-grids">
			<div class="row">
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail wow rollIn" data-wow-delay="1s" data-wow-offset="30">
							<img src="images/7.jpg" alt="...">
							<div class="caption" style = "display:none;">
								<h3>新加坡</h3>
								<p>598家酒店</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">查看详细</a>
								</p>
							</div>
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail wow pulse" data-wow-delay="1s" data-wow-offset="30">			
						<img src="images/4.jpg" alt="...">				
							<div class="caption" style = "display:none;">
								<h3>曼谷</h3>
								<p>3120家酒店</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">查看详细</a>
								</p>
							</div>
							
						</div>
					</div>
					<div class="col-sm-6 col-md-4">
						<div class="thumbnail wow lightSpeedIn" data-wow-delay="1s" data-wow-offset="30">
							<img src="images/5.jpg" alt="...">
							<div class="caption" style = "display:none;">
								<h3>东京</h3>
								<p>2030家酒店</p>
								<p>
									<a href="#" class="btn btn-primary" role="button">查看详细</a>
								</p>
							</div>
						</div>
					</div>
				</div>
		</div>
	</div>
	
	<div class = "fl3">
		<div class = "icon1 lf">
			<img alt="" src="../img/01.png">
			<h3>天津--伦敦</h3>
		</div>
		<div class = "icon2 lf">
			<img alt="" src="../img/02.png">
			<h3>天津--曼谷</h3>
		</div>
		<div class = "icon3 lf">
			<img alt="" src="../img/03.png">
			<h3>天津--澳门</h3>
		</div>
		<div class = "icon4 lf">
			<img alt="" src="../img/04.png">
			<h3>天津--香港</h3>
		</div>
	</div>	
</div>
<%@ include file="model/footer.jsp" %>

</body>
</html>