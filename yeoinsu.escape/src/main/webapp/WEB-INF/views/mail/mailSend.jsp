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
<script type="text/javascript"
   src="<c:url value='/js/ckeditor/ckeditor.js'/>"></script>
<title>escape</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
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
	div.col-md-6{
		margin-top: 3%;
		margin-bottom: 3%;
	}

	.col-md-6>p{
		color:white;
		font-size: 17px;
	}
	#bt{
		border: 4px inset gray;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
		font-size: 17px;
		width:20%;
		height:auto;
	}
	div#title{
		margin-bottom: 4%;
		font-family: 'Poor Story', cursive;
	}
	
	#title h1, h4 {
	display: inline;
	color: white;
	}
	
	#titleName{
		border-top:none;
		border-left:none;
		border-right:none;
		border-bottom: 4px inset gray;
		width:70%;
		text-align: center;
		height:40px;
		font-size: 15px;
		color:white;
		background-color: transparent;
	}	
</style>
<header>
	
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand center-block" href="main">로고</a>
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
				<li><a href="../party/01.html">&emsp;PARTY</a></li>
				<li><a href="../notice/01.html">&emsp;NOTICE</a></li>
				<li><a href="../question/01.html">&emsp;Q&A</a></li>
			</ul>
		</div>
	</div>
</nav>
</header>
<body>
	<div class="container">
		<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<div id="title">
						<h1>메일발송</h1><h4>| 내용입력</h4>
					</div>
					<br>
					<form action="sendMail/sending" method="post">
					<input id="titleName" name="subject" type="text" placeholder="메일 제목을 입력해주세요."/>
					<br><br>
					<textarea id="inS" name="txt"></textarea>
					<script>
					CKEDITOR.replace('inS', {
						width : "100%",
						height: "300px",
						border : "3px inset gray",
						resize_enabled : false
					});
					</script>
					<br><br>
					<button id="bt" type="submit" class="btn btn-default">단체메일발송</button>&emsp;&emsp;&emsp;
					<a id="bt" href="main" class="btn btn-default">취소</a>
					</form>
				</div>
		</div>
	</div>
</body>

<%@include file ="../../resource/include/footnav.jsp" %>

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