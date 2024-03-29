<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="yeoinsu.escape.user.login.domain.* "%>
<%
User comPw = (User)session.getAttribute("pUser");
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
<%@ page import="yeoinsu.escape.user.login.domain.* "%>
<title>escape</title>
</head>

<style>
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');

	
	input {
	background-color: transparent;
	border-top: none;
	border-left: none;
	border-right: none;
	border-bottom: 4px ridge white;
	color: white;
	width: 60%;
	height: 40px;
	margin-bottom: 2%;
	font-family: 'Poor Story', cursive;
	font-size: 20px;
}
	#title h1, h4 {
		display: inline;
		color: white;
		margin-bottom: 4%;
		font-family: 'Poor Story', cursive;
	} 
	
	div.col-md-6>form>a {
	border: 4px inset gray;
	font-weight: bold;
	font-family: 'Poor Story', cursive;
	font-size: 17px;
	width: 20%;
	height: auto;
	}
	
	div.col-md-6>form>button {
		border: 4px inset gray;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
		font-size: 17px;
		width: 20%;
		height: auto;
	}

	
	div.col-md-6{
		margin-top: 3%;
		margin-bottom: 2%;
	}
	
	
	hr{
		margin-bottom: 1.5%;
		border: 2px outset white;
		width:60%;
		margin-top:0;
	}
	
	hr#id{
		margin-top: 3.4%;
	}
	
	#checkId{
		margin-top: -7%;
	}
	
	#checkPw{
		margin-top: -7%;
	}
	
	span#gol{
		color:white;
	}
	
	#dk {
	border: solid white 2px;
	color: white;
	font-size: 2rem;
	width: 170px;
	font-family: 'Metal Mania', cursive;
}
</style>
<script>
$(document).ready(function(){
    $("#okBtn3").click(function(){
    	if($("#pw1").val()=="" || $("#pw1").val()==null){
    		$("#checkLogin").text("비밀번호를 입력해주세요.");
			$("#checkLogin").css("color","red");
			$("#pw1").focus();
			return;
    	}
    	if($("#pw2").val()=="" || $("#pw2").val()==null){
    		$("#checkLogin").text("비밀번호를 입력해주세요.");
			$("#checkLogin").css("color","red");
			$("#pw2").focus();
			return;
    	}
    	if($("#pw1").val()==$("#pw2").val()){
			$('#okSub').submit();
		}else{
			$("#checkLogin").text("비밀번호가 일치하지 않습니다.");
			$("#checkLogin").css("color","red");
		} 
	});
});


</script>
<header>
<%@include file ="../../../resource/include/header.jsp" %>
</header>
<body>
	<div class="container">
		<br><br><br><br>
		<div align="center">
			<a href="01.html" id="dk" type="button" class="btn btn-dark">Login</a>
			<a href="findPw1.html" id="dk" type="button" class="btn btn-dark">Find Password</a>
		</div>
		<br>
		<div class="row">
			<div class="col-md-6 col-md-offset-3 text-center">
				<div id="title">
					<h1>비밀번호 재설정</h1>
					<h4>|정보입력</h4>
				</div>
				<br><br>
				<br>
				<form action="newPw" id="okSub">
					<input name="userId" type="hidden" value="<%=comPw.getUserId()%>">
					<input name="userPw" id="pw1" type="password" value="" placeholder="비밀번호 입력" autocomplete=off /><br>
					<input name="userPw2" id="pw2" type="password" value=""  placeholder="비밀번호 확인" autocomplete=off />
					<div class="check_font" id="checkLogin">　</div>
					<br><br>
					<br> 
					<a id="okBtn3" type="button" class="btn btn-default">확인</a>&emsp;&emsp;&emsp;
					<a href="../main" class="btn btn-default">취소</a>
				</form>
			</div>
		</div>
	</div>
</body>

<div class="container"  id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="../login"><span class="glyphicon glyphicon-log-in"><br>로그인</span></a>
	<a id="b2" type="button" class="btn btn-default" href="agreement"><span class="glyphicon glyphicon-user"><br>회원가입</span></a>
</div>

<footer>
<%@include file ="../../../resource/include/footer.jsp" %>
</footer>
</html>