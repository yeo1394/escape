<%@page import="yeoinsu.escape.party.service.PageServiceImpl"%>
<%@page import="yeoinsu.escape.party.domain.Page"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

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
<link
	href="https://fonts.googleapis.com/css?family=Black+And+White+Picture|Metal+Mania&display=swap"
	rel="stylesheet">
<script type="text/javascript"
	src="<c:url value='/ckeditor/ckeditor.js'/>"></script>
<link
	href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap"
	rel="stylesheet">
<title>main</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');

body {
	font-family: 'Poor Story', cursive;
}

footer {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}

h1 {
	color: white;
	font-size: 40px;
	margin-top: -55px;
	margin-bottom: 20px;
}

#out {
	height: 80%;
	width: 100%;
}

#Title {
	color: white;
	font-size: 30px;
}

#Thema {
	margin-left: 10%;
	margin-top: 15%;
}

select {
	width: 40%;
	height: 30px;
	display: inline;
	background-color: white;
	margin-bottom: 2%;
}

#commentB {
	margin-top: 1%;
	margin-right: 15%;
	float: right;
	height: 30px;
	width: 80px;
	background-color: rgb(72, 72, 72);
	color: white;
	border: none;
}

hr {
	margin-top: 5px;
	margin-bottom: 10px;
	border: 1px solid gray;
	width: 85%;
	margin-right: 50%;
}
</style>
<header>
	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand center-block" href="../user/00.html">로고</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="#">&emsp;GUIDE</a></li>
					<li><a href="#">&emsp;BOOKING</a></li>
					<li><a href="#">&emsp;THEMA</a></li>
					<li><a href="01.html">&emsp;PARTY</a></li>
					<li><a href="#">&emsp;NOTICE</a></li>
					<li><a href="#">&emsp;Q&A</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
<body>
	<div class="container-fluid">
		<div id="out">
			<div id="Thema">
			<%if(request.getAttribute("party") == null){ %>
				<form action="join">
			<%}else{ %>
				<form action="updateIn">
			<%} %>
					<h1>파티모집 글쓰기</h1>
					<hr>
					<input type="hidden" name="partyNo" value="${party.partyNo}">
					<span id="Title">테마 선택 : </span> <select
						class="dropdown-primary select-lg mb-3" id="partyThema"
						name="partyThema">
						<option value="테마 1">테마 1</option>
						<option value="테마 2">테마 2</option>
						<option value="테마 3">테마 3</option>
						<option value="테마 4">테마 4</option>
						<option value="테마 5">테마 5</option>
					</select>
					<hr>
					<span id="Title">시간 선택 : </span> <select
						class="dropdown-primary select-lg mb-3" name="partyTime">
						<option value="10:00~11:00">10:00~11:00</option>
						<option value="12:00~13:00">12:00~13:00</option>
						<option value="14:00~15:00">14:00~15:00</option>
						<option value="16:00~17:00">16:00~17:00</option>
						<option value="18:00~19:00">18:00~19:00</option>
					</select>
					<hr>
					<textarea id="inS" name="partyContent"></textarea>
					<script>
						CKEDITOR.replace('inS', {
							width : "85%",
							height : "300px",
							border : "1px solid white",
							resize_enabled : false
						});
						CKEDITOR.instances.inS.setData("${party.partyContent}")
					</script>
					<hr>
					<%
						if (request.getAttribute("party") == null) {
					%>
					<button id="commentB" type="submit" class="btn btn-default">등록</button>
					<%
						} else {
					%>
					<button id="commentB" type="submit" class="btn btn-default">수정</button>
					<%} %>
				</form>
			</div>
		</div>
	</div>
</body>
<div class="container" id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="../main.html"><span
		class="glyphicon glyphicon-log-out"><br>로그아웃</span></a> <a id="b2"
		type="button" class="btn btn-default" href="../user/11.html"><span
		class="glyphicon glyphicon-asterisk"><br>계정관리</span></a>
</div>


<footer>
	<div class="container-fluid">
		<div id="footarea">
			<a href="#">오시는길</a>&nbsp;|&nbsp;<a href="#">게임방법</a><br> <br>

			<p>
				<b>대표이사&nbsp;</b> 여인수&emsp;|&emsp;<b>대표전화&nbsp;</b> 010-0000-0000
			</p>
			<p>
				<b>사업자등록번호 &nbsp;</b> 000-00-00000&emsp;|&emsp;<b>본사&nbsp;</b>(주)인천광역시
				계양구 효성동
			</p>
			<p>
				<b>주소&nbsp;</b>서울특별시 영등포구 영중로8길 6 6층
			</p>

			<p>
				<b>고객센터&nbsp;</b> 02-0000-0000
			</p>

			<br>

			<p id="copy">COPYRIGHT 2019. INSOO ENTERTAINMENT</p>

		</div>
		<br> <br>

	</div>
</footer>
</html>