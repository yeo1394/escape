<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
String errName = (String)session.getAttribute("errName");
String errTel = (String)session.getAttribute("errTel");
%>
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
		margin-bottom: 17%;
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
		margin-top: -5%;
	}
	
	div#texts>p#finish{
		color: white;
		font-size: 20px;
	}
	
	div.col-md-6{
		margin-top: 3%;
		margin-bottom: 14%;
	}
	
	div.col-md-6>a{
		border: 4px inset gray;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
		font-size: 17px;
		width:20%;
		height:auto;
	}
	
	p#text{
		color: red;
	}
</style>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
	<div class="container" id="loginDiv">
		<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<div id="title">
						<h1>예약하기</h1><h4>|예약오류</h4>
						<hr>
					</div>
					<div id="texts">
						<p id="name"> 
						<%=errName %>&nbsp;(Tel: <%=errTel %>)<br>
						</p>
						<br>
						<p id="finish">위 내용의 해당하는 예약정보가 이미 존재합니다.</p>
						<br><br>
						<p id="text">※ 저희 매장은 본사 규정상 1인 1회 예약진행을 하고 있습니다.</p>
					</div>
					<br>
					<a href="../main" class="btn btn-default">확인</a>
				</div>
		</div>
	</div>
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>