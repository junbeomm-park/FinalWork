<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="d" uri="http://java.sun.com/jsp/jstl/core" %>

<html lang="en" class="no-js">
	<head>
		<meta charset="UTF-8" />
		<meta http-equiv="X-UA-Compatible" content="IE=edge"> 
		<meta name="viewport" content="width=device-width, initial-scale=1"> 
		<title>불IT났어</title>
		<meta name="description" content="Modern effects and styles for off-canvas navigation with CSS transitions and SVG animations using Snap.svg" />
		<meta name="keywords" content="sidebar, off-canvas, menu, navigation, effect, inspiration, css transition, SVG, morphing, animation" />
		<meta name="author" content="Codrops" />
		<link rel="shortcut icon" href="../favicon.ico">
		<link rel="stylesheet" type="text/css" href="/np/css/normalize.css" />
		<link rel="stylesheet" type="text/css" href="/np/css/demo.css" />
		<link rel="stylesheet" type="text/css" href="/np/css/font.css" />
		<link rel="stylesheet" type="text/css" href="/np/css/menu_topside.css" />
		<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  		<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  		<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
		<script src="https://code.highcharts.com/highcharts.js"></script>
		<script src="https://code.highcharts.com/highcharts-3d.js"></script>
		<script src="https://code.highcharts.com/modules/exporting.js"></script>
		<script src="https://code.highcharts.com/modules/export-data.js"></script>
		<script src="https://code.highcharts.com/modules/accessibility.js"></script>
		<script src="https://code.highcharts.com/highcharts-more.js"></script>
		<script src="https://code.highcharts.com/modules/solid-gauge.js"></script>
		<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
		<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d1fec8d8766a8a6cd6d1d7a100d376e0"></script>
		<!--[if IE]>
  		<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
		
		<style type="text/css">
		@import
			url('https://fonts.googleapis.com/css2?family=Dongle:wght@300&display=swap')
			;
		
		@import
			url('https://fonts.googleapis.com/css2?family=Dongle:wght@300&family=Titillium+Web&display=swap')
			;
		.warning {
			width: 100px;
			height: 100px;
		}
		.default {
			width: 100px;
			height: 100px;
		}
		h2 {
			font-family: 'Titillium Web', sans-serif;
		}
		
		
		h5 {
			margin : 20px;
			font-family: 'Titillium Web', sans-serif;
			font-size: 15px;
			color: white;
		}
		.content {
			background-color: #E7E9EB;
		
		}
		.highcharts-figure .chart-container {
		    /* width: 220px; */
		    height: 130px;
		    margin: auto;
		    
		}
				
		
		#container_tot {
		    height: 425px;
		    border: 2px solid blue;
		    margin : auto 20px;
		    font-family: 'Titillium Web', sans-serif; 
		}
		#container_gas {
		    height: 190px;
		    border: 2px solid red;
		    margin : auto 20px;
		}
		#container_temp {
		    height: 190px;
		    border: 2px solid purple;
		    margin : auto 20px;
		}

		.ex-layout{ height: 550px;}
		.menu{
			width: 100%;
			height: 30px;
			border:2px solid #09c;
			background: #d7f5ff;
		}
		.main .left-menu{
			float: left;
			width: 50%;
			height: 500px;
		}
		.main .contents {
			float: left;
			width: 50%;
			height: 250px;
		}
		
		.main .contents .arcticle{
			height: 200px;
			
		}
		.main .contents .comment{
			height: 200px;
			
		}
		.section{
		margin:0 auto;
		width: 1500px;
		height: 500px;
		background: skyblue;
		}
		
		.nav{
		border: 2px solid yellow;
		height: 100px;
		background: #A2A2A2;
		
		}
		
	
		
		</style>
	</head>
	<body onload="time()">
		<div class="box">
			<div class="menu-wrap">
				<nav class="menu-top">
					<div class="profile"><img src="img/user1.png" alt="Matthew Greenberg"/><span style="color: white;">Matthew Greenberg</span></div>
					<div class="icon-list">
						<a href="#"><i class="fa fa-fw fa-star-o"></i></a>
						<a href="#"><i class="fa fa-fw fa-bell-o"></i></a>
						<a href="#"><i class="fa fa-fw fa-envelope-o"></i></a>
						<a href="#"><i class="fa fa-fw fa-comment-o"></i></a>
					</div>
				</nav>
				<nav class="menu-side">
					<a href="main.mc">Main</a>
					<a href="recentdata.mc">Recent Data</a>
					<a href="#">Accumulated Data</a>
					<a href="graphics.mc">Canvas Test</a>
					<a href="testgraph2.mc">testgrapgh2</a>
					<a href="testgraph3.mc">testgrapgh3</a>
					<a href="#">About Us</a>
				</nav>
			</div>
			<button class="menu-button" id="open-button">Open Menu</button>
			<div class="content-wrap">
				<div class="content">
					<div class="nav">
						<a href ="login.mc"><img src="/np/img/login2.png" style = "width: 70px; height: 70px; float:right;"/></a>
					</div>
					<header class="codrops-header" style="border: 2px solid red;">
						
						<h1 class="eng-font">Industrial Fire Detector<span>Real-time status</span></h1>
						
					</header>
					
					<section>
						<c:choose>
							<c:when test="${center == null }">
								<jsp:include page="center.jsp"/>
							</c:when>
							<c:otherwise>			
									<jsp:include page="${center }.jsp"/>		
							</c:otherwise>
						</c:choose>
					</section>
					
				</div>
				
			</div><!-- /content-wrap -->
		</div><!-- /container -->
		
		<script src="/np/js/classie.js"></script>
		<script src="/np/js/main.js"></script>
	</body>
</html>