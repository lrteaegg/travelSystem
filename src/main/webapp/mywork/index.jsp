
<%@ page pageEncoding="utf-8"  
contentType="text/html; charset=UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>开心旅游首页</title>
<link href = '${pageContext.request.contextPath}/dist/css/bootstrap.min.css' rel = "stylesheet">
<link href = '${pageContext.request.contextPath}/mywork/css/header.css' rel = "stylesheet">
<link href = '${pageContext.request.contextPath}/mywork/css/footer.css' rel = "stylesheet">
<link href = '${pageContext.request.contextPath}/mywork/css/index.css' rel = "stylesheet">
<script type="text/javascript" src = '${pageContext.request.contextPath}/jquery-3.1.1.min.js'></script>
<script type="text/javascript" src = '${pageContext.request.contextPath}/dist/js/bootstrap.min.js'></script>
<script type="text/javascript" src = '${pageContext.request.contextPath}/mywork/js/index.js'></script>

</head>
<body>
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
<div class = "center-container">
	<div class = "container">	
		<div class = "logo">
			<h1>
				<a href = "#" style=";">
				欢迎来到我的旅游
				<p>多读书多看报，少吃零食多“旅游”</p>	
				</a>				
			</h1>
		</div>	
		<div class="row">		
	 		<a href = 'index1.do' class="btn btn-primary btn-lg col-md-4 col-md-offset-4">进入我的世界</a>
		</div>	
	</div>	
</div>
<%@ include file="model/login.jsp" %>
<%@ include file="model/footer.jsp" %>
</body>
</html>








