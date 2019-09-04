<%@page import="yeoinsu.escape.user.login.domain.User"%>
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
	
	input#userId{
		margin-bottom:5%;
		border: 4px ridge white;
		width:40%;
	}
	
	input#userPw2{
		margin-bottom:5%;
	}
	
	input{
		border: none;
		background-color: transparent;
		margin-bottom: 2%;
		color:white;
		width:60%;
		height:40px;
		font-family: 'Poor Story', cursive;
		font-size: 20px;
		text-align:center;
	}
	
	input#email1{
		width:28%;
	}
	
	select#email2{
		width:28%;
		height:30px;
		border: none;
		background-color: transparent;
		font-family: 'Poor Story', cursive;
		font-size: 20px;
		text-align:center;
	}
	
	select>option{
		background: #222;
		color: gray;
	}
	
	div#title{
		margin-bottom: 4%;
		font-family: 'Poor Story', cursive;
	}
	
	#title h1, h4 {
		display: inline;
		color: white;
	} 
	
	#userInfo>button,#userInfo>a{
		border: 4px inset gray;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
		font-size: 17px;
		width:20%;
		height:auto;
	}

	
	div.col-md-6{
		margin-top: 3%;
		margin-bottom: 2%;
	}
	
	input[type="number"]::-webkit-outer-spin-button,
	input[type="number"]::-webkit-inner-spin-button {
 	 	-webkit-appearance: none;
 		 margin: 0;
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
	
	#checkPw{
		margin-top: -7%;
	}
	
	span#gol{
		color:white;
	}
</style>
<script>
<% 
User nowUser = (User) session.getAttribute("nowUser");
%>
var isCheck = function() {
	var result = false;
	if ($('#checkPw').text()!="비밀번호가 다릅니다.") {
		result = true;
	}
	return result;
}

var init = function() {
	$("#userPw, #userPw2").blur(function(){
		var btn = document.getElementById('secede');
		var pw1 = $("#userPw").val();
		var pw2 = $("#userPw2").val();
		var realPw = '<%=nowUser.getUserPw()%>';
		if(pw1!=pw2){
			btn.disabled = true;
			$("#checkPw").text("비밀번호가 다릅니다.");
			$("#checkPw").css("color","red");
			$("#checkPw2").text("");
		}else if(pw1 == pw2 && pw1 == realPw){
			btn.disabled = false;
			$("#checkPw").text("");
			$("#checkPw2").text("정말 탈퇴 하시겠습니까?");
			$("#checkPw2").css("color","red");
		}else{
			btn.disabled = true;
			$("#checkPw").text("");
			$("#checkPw2").text("현재 사용자의 비밀번호와 다릅니다.");
			$("#checkPw2").css("color","red");
		}
	});	
}

$(init);
</script>
<header>
<%@include file ="../../../resource/include/header.jsp" %>
</header>
<body>
	<div class="container">
		<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<div id="title">
						<h1>회원탈퇴</h1><h4>|정보확인</h4>
					</div>
					<br>
					<form id="userInfo" action="secedeUser" method="post">
						<input id="userId" name = "userId" value="<%=nowUser.getUserId()%>" readonly/>
						<input id="userPw" type="password" maxlength="20" placeholder="비밀번호 입력" required/><hr>
						<input id="userPw2" type="password" maxlength="20" placeholder="비밀번호 재입력" required/>
						<div class="check_font" id="checkPw"></div><hr id="id">
						<div class="check_font" id="checkPw2"></div>
						<br>
						<button type="submit" id="secede" class="btn btn-default">회원 탈퇴</button>&emsp;&emsp;&emsp;
						<a type="button" class="btn btn-default" href="../main">취소</a>
						<br><br>
					</form>
				</div>
		</div>
	</div>
</body>

<%@include file ="../../../resource/include/footnav.jsp" %>

<footer>
<%@include file ="../../../resource/include/footer.jsp" %>
</footer>
</html>