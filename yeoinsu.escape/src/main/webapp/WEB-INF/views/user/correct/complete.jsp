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
	div#texts>p#finish{
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
<%@include file ="../../../resource/include/header.jsp" %>
</header>
<body>
	<div class="container" id="loginDiv">
		<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<div id="title">
						<h1>계정관리</h1><h4>|수정완료</h4>
					</div>
					<div id="texts">
						<p id="name">${requestScope.name} 님</p>
						<br>
						<p id="finish">정보 수정이 완료되었습니다.</p>
					</div>
					<br>
					<a href="../main" class="btn btn-default">확인</a>
				</div>
		</div>
	</div>
</body>

<%@include file ="../../../resource/include/footnav.jsp" %>

<footer>
<%@include file ="../../../resource/include/footer.jsp" %>
</footer>
</html>