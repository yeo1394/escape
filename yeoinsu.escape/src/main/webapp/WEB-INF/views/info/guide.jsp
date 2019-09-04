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

	#gud{
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
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>

<div id="gud">
	<div id="title">
		<h1>이용안내</h1>
	</div> 


	<div id="imgBox">
		<img src="<c:url value="/img/guide.png"/>" style="max-width: 100%; height:auto;"/>
	</div>
	
	<br>
	<br>
	
		<a href="../main" id="bt1" type="button">메인으로</a>	
</div>
	<br>
	<br>
	<br>
	
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>