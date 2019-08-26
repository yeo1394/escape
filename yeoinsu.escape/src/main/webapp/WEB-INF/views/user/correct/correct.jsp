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
	$("#userTel, #email1, #email2, #userPw, #userPw2").blur(function(){
		var btn = document.getElementById('correct');
		var pw1 = $("#userPw").val();
		var pw2 = $("#userPw2").val();
		if(pw1!=pw2){
			btn.disabled = true;
			$("#checkPw").text("비밀번호가 다릅니다.");
			$("#checkPw").css("color","red");
		}else{
			btn.disabled = false;
			$("#checkPw").text("");
		}
	});	
	
	$("#userTel, #email1, #email2, #userPw, #userPw2").blur(function(){
		var email1 = $("#email1").val();
		var email2 = $("#email2").val();
		var nowMail = email1 +'@'+ email2;
		$("#userMail").val(nowMail);
	});
}

$(init);
</script>
<header>
	
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand center-block" href="../userMain">로고</a>
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
				<li><a href="../group/01.html">&emsp;PARTY</a></li>
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
						<h1>계정관리</h1><h4>|정보수정</h4>
					</div>
					<form id="userInfo" action="correctUser" method="post">
						<input name = "userName" value="<%=nowUser.getUserName()%>" readonly/><hr>						
						<input name = "userId" value="<%=nowUser.getUserId()%>" readonly/><hr>
						<input name="userPw" id="userPw" type="password" maxlength="20" placeholder="비밀번호 입력" required/><hr>
						<input id="userPw2" type="password" maxlength="20" placeholder="비밀번호 재입력" required/>
						<div class="check_font" id="checkPw"></div><hr id="id">
						<input id="email1" type="text" maxlength="11" placeholder="이메일 입력" autocomplete="off" onkeyup="this.value=this.value.replace(/[^a-zA-Z0-9]/g,'');" required/>
						<span id="gol">
							@<select id="email2" > 
								<option value="naver.com" selected>naver.com</option>
								<option value="daum.net">daum.net</option>
								<option value="nate.com">nate.com</option>
								<option value="gmail.com">gmail.com</option>
							</select>
						</span>
						<input type="hidden" id="userMail" name="userMail"/>
						<hr>
						<input name="userTel" id="userTel" type="text"  pattern=".{11,11}" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" autocomplete="off" value="<%=nowUser.getUserTel()%>" required/><hr><br>
						<button type="submit" id="correct" class="btn btn-default">정보 수정</button>&emsp;&emsp;&emsp;
						<a type="button" class="btn btn-default" href="secede">회원 탈퇴</a>
						<br><br>
					</form>
				</div>
		</div>
	</div>
</body>

<div class="container"  id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="../main"><span class="glyphicon glyphicon-log-out"><br>로그아웃</span></a>
	<a id="b2" type="button" class="btn btn-default" href="correct"><span class="glyphicon glyphicon-asterisk"><br>계정관리</span></a>
</div>

<footer>
	<div class="container-fluid">
		<div id="footarea">
			<a href="../info/02.html">오시는길</a>&nbsp;|&nbsp;<a href="../info/01.html">게임방법</a><br><br>
			
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