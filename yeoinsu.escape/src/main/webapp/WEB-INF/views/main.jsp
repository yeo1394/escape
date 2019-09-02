<%@page import="yeoinsu.escape.thema.domain.Thema"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!doctype html>
<html lang='ko'>
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<title>escape</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	
	.carousel-inner>.item>img{
		margin:auto;
		width:93%;
	}
	.jumbotron{
		background-color: #222;
		padding-top:2%;
		height:100%;
	}
	 #myCarousel{
	 	border: 2px solid white;
		/* height:100%; */
	 	height:730px;
	 	
	 }
	.col-md-4{
		height:50%;
	}
	.imgbox{
		width: 95%;
		height:95%;
		border: 1px solid white;
		margin-left:2%;
		margin-bottom:5%;
		float:left;
		background-img
	}
	.carousel-control {
	background: none !important;
	}	
	#heightAuto{
		height: auto;
	}
	div>div>div{
		color: white;
	}
</style>
<header>
	<%@include file ="../resource/include/header.jsp" %>
</header>
<body>
	<div class="container-fluid" id="heightAuto">
		<div class="jumbotron">
			<div id="myCarousel" class="carousel slide" data-ride="carousel">
	
		<!-- Indicators -->
		<ol class="carousel-indicators">
			<li data-target="#myCarousel" data-slide-to="0" class="active"></li>
			<li data-target="#myCarousel" data-slide-to="1"></li>
			<li data-target="#myCarousel" data-slide-to="2"></li>
			<li data-target="#myCarousel" data-slide-to="3"></li>
			<li data-target="#myCarousel" data-slide-to="4"></li>
			<li data-target="#myCarousel" data-slide-to="5"></li>
		</ol>
	
		<!-- Wrapper for slides -->
		<div class="carousel-inner">
		<c:forEach var="post" items="${Themalist}" begin="0" end="0" >
			<div class="item active">
				${post.themaImg}
			</div>
		</c:forEach>
		
		<c:forEach var="post" items="${Themalist}" begin="1" end="4" >
			<div class="item">
				${post.themaImg}
			</div>
		</c:forEach>
			
		<c:forEach var="post" items="${Themalist}" begin="5" >
			<div class="item">
				${post.themaImg}
				<div class="carousel-caption">
				</div>
			</div>
		</c:forEach>
		</div>
		
		<!-- Left and right controls -->
		<a class="left carousel-control" href="#myCarousel" data-slide="prev">
			<span class="glyphicon glyphicon-chevron-left"></span>
		</a>
		<a class="right carousel-control" href="#myCarousel" data-slide="next">
			<span class="glyphicon glyphicon-chevron-right"></span>
		</a> 
	</div>
		</div>
		
		
		
	</div>
	<div class="container-fluid" id="sixThema">
	<c:forEach var="post" items="${Themalist}">
			<div class="col-md-4">
				<div class="imgbox">
					${post.themaImg}
				</div>
			</div>
		</c:forEach>
		</div>

</body>

	<%@include file ="../resource/include/footnav.jsp" %>

<footer>
	<%@include file ="../resource/include/footer.jsp" %>
</footer>
</html>