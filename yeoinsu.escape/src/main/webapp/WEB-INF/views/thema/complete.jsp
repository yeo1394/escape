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



	#comt{
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
	#con{
		margin-top:5%;
		margin-bottom: 2%;
		color: rgb(180,180,180);
	}

</style>


<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
<div id="comt">	
	<div id="title">
		<h1>테마관리</h1>
	</div>
	<h3 id="con">수정이 완료되었습니다.</h3>
		<a id="bt1" type="submit" href="../main">메인으로</a>
	<br>
	<br>
	<br>
</div>	
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>