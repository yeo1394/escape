<%@page import="yeoinsu.escape.thema.domain.Thema"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
	
<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
	
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
	
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
	
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
	
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Black+And+White+Picture|Metal+Mania&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">

<title>thema index</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	
	#index div{
		margin:auto;
		color:white;
		border:1px solid white;
	}
	#index{
		height: 80%;
		margin-top:2%;
		margin-bottom: 10%;
		
	}
	.row{
		height:90%;
	}
	.col-md-6{
		height: 95%;
		padding:0;
		font-family: 'Poor Story', cursive;
	}
	#title,#subtitle,#Dif,#number{
		height:20%;
	}
	#ex{
		height:40%;
	}
	#check{
		margin-top:2%;
	 	margin-left:45%;
		/*  */
		border: 4px inset gray;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
		font-size: 11px;
		width:auto;
		height:auto;
		/*  */
	}
	img{
		width:100%;
		height:100%;
	}
/* 	#logogo{
		width: 200px;
		height: 100px;
		border :  solid white 1px;
	} */
	
	@media (min-width: 0px) and (max-width: 1023px){
		#check{
			margin-left:30%;
			margin-top: 3%;
		}
		#ex{
			height:auto;
		}
		#timg{
			width:inherit*2;
			height:inherit;
		}
		#logogo{
			width:50px;
			height:25px;
		}
		#logoimg{
		margin-top:25%;
		margin-left:25%;
			width :120px;
			height: 50px;
		}
	}
	
	li>a{
		margin-top: 15px;
	}
		
</style>
<script>

</script>
<header>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
		<div id="logogo">
			<a href="../main"><img id="logoimg" alt="logo" src="../img/key20.png" width="200px" height="100px">
			</a>
		</div>
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
				<li><a href="themaindex">&emsp;THEMA</a></li>
				<li><a href="../party">&emsp;PARTY</a></li>
				<li><a href="#">&emsp;NOTICE</a></li>
				<li><a href="#">&emsp;Q&A</a></li>
		</ul>
		</div>
	</div>
</nav>
</header>

<body>
	<!-- 테마 -->
<c:forEach var="post" items="${Themalist}">
	<div class="container-fluid" id="index">
		<div class="row">
			<div class="col-md-6" style="float: left; width: 50%; height:100%;">
				<img id="timg" alt="joker" src="${post.themaImg}" width="100%" height="100%">
			</div>
			<div class="col-md-6" style="float: right; width:50%; height:100%;">
				<div class="row">
					<div class="col-md-10" id="title">${post.themaTitle}</div>
					<div class="col-md-2" id="number">${post.themaNo}</div>
					<div class="col-md-12" id="Dif">
						<img src="<c:url value="/img/star0${post.themaLevel}.png"/>"/>
					</div>
					<div class="col-md-12" id="ex">${post.themaContent}</div>
				</div>
				<button class="btn btn-default" id="check">예약하기</button>
			</div>
		</div>
	</div>
</c:forEach>
	</body>
	
<%@include file ="../../../resource/include/footnav.jsp" %>

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