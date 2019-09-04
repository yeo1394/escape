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
						location.href="loginMain";
					}else if($('#pw').val()==user.userPw){
						location.href="loginMain";
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
<%@include file ="../../resource/include/header.jsp" %>
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
						<a href="login/findId1">아이디찾기</a>│<a href="login/findPw1">비밀번호찾기</a>│<a href="login/agreement">회원가입</a>
					</div>
				</div>
		</div>
	</div>
</body>

<%@include file ="../../resource/include/footnav.jsp" %>

<footer>
	<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>