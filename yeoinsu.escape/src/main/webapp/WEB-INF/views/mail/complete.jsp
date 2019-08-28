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
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	
	div#title{
		margin-top: -4%;
		margin-bottom: 16%;
		font-family: 'Poor Story', cursive;
	}
	
	#title h1, h4 {
	display: inline;
	color: white;
	}
	
	div#texts>p#name{
		color: white;
		font-size: 25px;
		font-weight: bold;
		margin-bottom: -1%;
	}
	div#texts{
		color: white;
		font-size: 20px;
	}
	
	div.col-md-6{
		margin-top: 3%;
		margin-bottom: 15%;
	}
	
	div.col-md-6>a{
		border: 4px inset gray;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
		font-size: 17px;
		width:20%;
		height:auto;
	}
</style>
<header>
	
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand center-block" href="../main">로고</a>
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="../info/01.html">&emsp;GUIDE</a></li>
				<li><a href="../booking/01.html">&emsp;BOOKING</a></li>
				<li><a href="../thema/01.html">&emsp;THEMA</a></li>
				<li><a href="01.html">&emsp;PARTY</a></li>
				<li><a href="../notice/01.html">&emsp;NOTICE</a></li>
				<li><a href="01.html">&emsp;Q&A</a></li>
			</ul>
		</div>
	</div>
</nav>
</header>
<body>
	<div class="container" id="loginDiv">
		<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<div id="title">
						<h1>메일발송</h1><h4>|발송완료</h4>
					</div>
					<div id="texts">
						<p id="name">메일발송이 완료되었습니다.</p>
						<br>
					</div>
					<br>
					<a href="../main" class="btn btn-default">확인</a>
				</div>
		</div>
	</div>
</body>

<div class="container"  id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="../login"><span class="glyphicon glyphicon-log-in"><br>로그인</span></a>
	<a id="b2" type="button" class="btn btn-default" href="../login/agreement"><span class="glyphicon glyphicon-user"><br>회원가입</span></a>
</div>

<footer>
	<div class="container-fluid">
		<div id="footarea">
			<a href="../info/02.html">오시는길</a>&nbsp;|&nbsp;<a href="../info/01.html">게임방법</a><br><br>
			
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