<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
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
	
	#mb1{
		width: 50%;	
		float: left;
		background-color : #222;
		border: 4px outset gray;
		color: gray;
		
	}
	#mb2{
		width:25%;
		float: left;
		background-color : #222;
		border : 4px outset gray;
		color: gray;
		
	}
	#mb3{
		width:25%;
		float: right;
		background-color : #222;
		border : 4px outset gray;
		color: gray;
		
	}
	

</style>
<header>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand center-block" href="managerMain">로고</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="#">&emsp;GUIDE</a></li>
				<li><a href="#">&emsp;BOOKING</a></li>
				<li><a href="#">&emsp;THEMA</a></li>
				<li><a href="#">&emsp;PARTY</a></li>
				<li><a href="#">&emsp;NOTICE</a></li>
				<li><a href="#">&emsp;Q&A</a></li>
		</ul>
		</div>
	</div>
</nav>
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
		</ol>
	
		<!-- Wrapper for slides -->
		<div class="carousel-inner">
			<div class="item active">
				테마1
				<!-- <img src="Koala.jpg"> -->
			</div>
		
			<div class="item">
				테마2
				<!-- <img src="Penguins.jpg"> -->
			</div>
			
			<div class="item">
				테마3
				<!-- <img src="Tulips.jpg"> -->
				<div class="carousel-caption">
				</div>
			</div>
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
			<div class="col-md-4">
				<div class="imgbox">
				테마1
				</div>
			</div>
			<div class="col-md-4">
				<div class="imgbox">
				테마2
				</div>
			</div>
			<div class="col-md-4">
				<div class="imgbox">
				테마3
				</div>
		</div>
			<div class="col-md-4">
				<div class="imgbox">
				테마4
				</div>
			</div>
			<div class="col-md-4">
				<div class="imgbox">
				테마5
				</div>
			</div>
			<div class="col-md-4">
				<div id="box6" class="imgbox">
				테마6
				</div>
			</div>
		</div>



</body>

<div class="container"  id="footnav">
	<a id="mb1" type="button" class="btn btn-default" href="main"><span class="glyphicon glyphicon-log-out"><br>로그아웃</span></a>
	<a id="mb2" type="button" class="btn btn-default" href="#"><span class="glyphicon glyphicon-film"><br>테마관리</span></a>
	<a id="mb3" type="button" class="btn btn-default" href="sendMail"><span class="glyphicon glyphicon-envelope"><br>메일발송</span></a>
</div>


<footer>
	<div class="container-fluid">
		<div id="footarea">
			<a href="#">오시는길</a>&nbsp;|&nbsp;<a href="#">게임방법</a><br><br>
			
			<p><b>대표이사&nbsp;</b> 여인수&emsp;|&emsp;<b>대표전화&nbsp;</b> 010-0000-0000</p>	
			<p><b>사업자등록번호 &nbsp;</b> 000-00-00000&emsp;|&emsp;<b>본사&nbsp;</b>(주)인천광역시 계양구 효성동</p>
			<p><b>주소&nbsp;</b>서울특별시 영등포구 영중로8길 6 6층</p>
			
			<p><b>고객센터&nbsp;</b> 02-0000-0000 </p>
			
			<br>
			
			<p id="copy">COPYRIGHT 2019. INSOO ENTERTAINMENT</p>
		
		</div>
			<br>
			<br>
			
	</div>
</footer>
</html>