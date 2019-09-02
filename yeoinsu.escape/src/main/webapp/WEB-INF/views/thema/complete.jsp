<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="yeoinsu.escape.thema.service.ThemaServiceImpl"  %>
<%@ page import="yeoinsu.escape.thema.service.ThemaService"  %>
<%@ page import="yeoinsu.escape.thema.dao.ThemaDaoImpl"  %>
<%@ page import="yeoinsu.escape.thema.dao.ThemaDao"  %>
<%@ page import="yeoinsu.escape.thema.domain.Thema"  %>



<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>

</script>

<title>update</title>
</head>
	


<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');



	body{
		text-align: center;
	}
	
	#title{
		color: white;
		text-align: center;
		font-size: 40px;
		margin-top: 20px;
		margin-bottom: 40px;
		font-family: 'Poor Story', cursive;	/* 기본  */	
	}
	

	form>button{
		border: 3px outset gray;
		margin:auto;
		margin-top:0%;
		width:12%;
		margin-left: 5%;
		margin-right: 5%;
		background-color : #DDDDDD;
		color: black;
		font-weight: bold;
	}	 
	
	#bt1{
		border: 3px outset gray;
		margin:auto;
		margin-top:0%;
		width:12%;
		margin-left: 1%;
		margin-right: 1%;
		background-color : #DDDDDD;
		color: black;
		font-weight: bold;
	}

</style>


<header>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand center-block" href="00.html">로고</a>
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
	
	<div id="title">
		<h1>테마관리</h1>
	</div>
	 
		<a id="bt1" type="submit" href="../main">메인으로</a>
	<br>
	<br>
</body>

<div class="container"  id="footnav">
	<a id="mb1" type="button" class="btn btn-default" href="../main.html"><span class="glyphicon glyphicon-log-out"><br>로그아웃</span></a>
	<a id="mb2" type="button" class="btn btn-default" href="#"><span class="glyphicon glyphicon-film"><br>테마관리</span></a>
	<a id="mb3" type="button" class="btn btn-default" href="#"><span class="glyphicon glyphicon-envelope"><br>메일발송</span></a>
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