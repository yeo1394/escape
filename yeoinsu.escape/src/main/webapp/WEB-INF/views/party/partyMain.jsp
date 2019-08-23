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
<title>escape</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');

body {
	font-family: 'Poor Story' ,cursive;
}

footer {
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
}

h1 {
	color: white;
	text-align: center;
	font-size: 40px;
	margin-top: 30px;
	margin-bottom: 20px;
}

table {
	width: 100%;
}

.table>tbody>tr>td {
	border-top: 2px solid #555;
}

thead {
	background-color: rgb(32, 32, 32);
	color: white;
}

thead th {
	text-align: center;
	width:15%;
}

th[colspan] {
	width: 35%;
}

tbody {
	text-align: center;
	background-color: rgb(57, 57, 57);
	color: white;
}

#addGroup {
	margin-bottom: 20px;
}

#addGroup > a {
	float:right;
	background-color:rgb(72,72,72);
	color:white;
	border:none;
}
a {
	color: white;
}

a:hover {
	color: white;
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
	<div class="container-fluid">
		<h1>파티모집 게시판</h1>

		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th colspan="5">제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<c:forEach var="post" items="${requestScope.posts}">
					<tr>
						<td>${post.partyNo}</td>
						<td>${post.partyTitle}</td>
						<td>${post.partyWriter}</td>
						<td>${post.partyDate}</td>
						<td><span class="badge">${post.partyHits}</span></td>
					</tr>
				</c:forEach>
		</table>
	<div id="addGroup">
		<a href="03.html" class="btn btn-default">글쓰기</a>
	</div>	
	</div>
</body>

<div class="container"  id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="../main.html"><span class="glyphicon glyphicon-log-out"><br>로그아웃</span></a>
	<a id="b2" type="button" class="btn btn-default" href="../user/11.html"><span class="glyphicon glyphicon-asterisk"><br>계정관리</span></a>
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