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

<title>guide</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');

	body{
		text-align: center;
	}

	#title {
		color: white;
		text-align: center;
		font-size: 40px;
		margin-top: 20px;
		margin-bottom: 40px;
		font-family: 'Poor Story', cursive;	/* 기본  */	
	}
	
	#imgBox{
		/* border : 1px solid gray; */
		width: 60%;
		height : auto;
		margin-left: 20%;
		color: white;
	}
	
	#bt1{
		border: 3px outset gray;
		width:auto;
		height:auto;
		background-color : #222;
		color: white;
		padding: 0.5%;
	}	 
	
</style>

<header>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand center-block" href="../main.html">로고</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="01.html">&emsp;GUIDE</a></li>
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
	<div id="title">
		<h1>이용안내</h1>
	</div> 


	<div id="imgBox">
		<img src="<c:url value="/img/guide.png"/>" style="max-width: 100%; height:auto;"/>
	</div>
	
	<br>
	<br>
	
		<a href="../main.html" id="bt1" type="button">메인으로</a>	

	<br>
	<br>
	<br>
	
</body>
<div class="container"  id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="../user/01.html"><span class="glyphicon glyphicon-log-in"><br>로그인</span></a>
	<a id="b2" type="button" class="btn btn-default" href="../user/02.html"><span class="glyphicon glyphicon-user"><br>회원가입</span></a>
</div>


<footer>
	<div class="container-fluid">
		<div id="footarea">
			<a href="02.html">오시는길</a>&nbsp;|&nbsp;<a href="01.html">게임방법</a><br><br>
			
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