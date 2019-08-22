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
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
	
	#loginDiv{
		margin-top: 5%;
		margin-bottom: 10%;	
	}
	
	p#title{
		color: white;
		font-size: 50px;
		letter-spacing: 1.5px;
		font-family: 'Metal Mania', cursive;	
	}
	
	#inputs{
		margin-bottom: -2%;
	}
	
	input{
		background-color: transparent;
		border-top: none;
		border-left: none;
		border-right: none;
		border-bottom: 4px ridge white;
		color:white;
		width:50%;
		height:40px;
		margin-bottom: 3%; 
		font-family: 'Poor Story', cursive;
		font-size: 20px;
		text-align:center;
	}
	
	div#buttons button{
		color: black;
		border: 4px outset gray;
		width:23%;
		height:auto;
		text-align: center;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
		font-size: 16px;
		margin-top:3%;
	}
	
	#subGnb>a{
		color: gray;
	}
</style>
<script>
	var init = function() {
		$('#login').bind('click', function() {
			$.ajax({
				url: "login/getUser",
				type: "post",
				data: {
					userId:$("#id").val()
				},
				cache: false,
				success:function(user){
					if(user.userId==null || user.userId==""){
						$("#checkLogin").text("등록되지 않은 아이디입니다.");
						$("#checkLogin").css("color","red");
					}else if(user.userId=="admin" && $("#pw").val()=="admin"){
						location.href="managerMain";
					}else if($('#pw').val()==user.userPw){
						location.href="userMain";
					}else{
						$("#checkLogin").text("비밀번호가 다릅니다.");
						$("#checkLogin").css("color","red");
					}
				},
				error:function(a,b,errMsg){
					alert("error: "+errMsg);
				}
			});
		});
	}
	
	$(init);
</script>
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
	<div class="container" id="loginDiv">
		<div class="row">
				<div class="col-md-6 col-md-offset-3 text-center">
					<p id="title">Login</p>
					<form id="userForm">
						<input type="text" placeholder="아이디" id="id" name="userId" autocomplete="off"/><br>
						<input type="password" placeholder="비밀번호" name="userPw" id="pw"/>
						<div class="check_font" id="checkLogin"></div>
						<div id="buttons">	
							<button type="button" id="login" class="btn btn-default">로그인</button>&nbsp;&nbsp;
						</div>
					</form>
					<br>
					<div id="subGnb">
						<a href="#">아이디찾기</a>│<a href="#">비밀번호찾기</a>│<a href="login/agreement">회원가입</a>
					</div>
				</div>
		</div>
	</div>
</body>

<div class="container"  id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="login"><span class="glyphicon glyphicon-log-in"><br>로그인</span></a>
	<a id="b2" type="button" class="btn btn-default" href="login/agreement"><span class="glyphicon glyphicon-user"><br>회원가입</span></a>
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