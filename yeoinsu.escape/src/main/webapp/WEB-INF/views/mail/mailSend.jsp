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
<%@include file ="../../resource/include/header.jsp" %>
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
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>