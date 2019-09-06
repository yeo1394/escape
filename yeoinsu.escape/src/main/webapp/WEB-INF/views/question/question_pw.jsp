<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
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
		font-size: 40px;
		letter-spacing: 1.5px;	
		font-family: 'Poor Story', cursive;
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
		margin-bottom: 2%; 
		font-family: 'Poor Story', cursive;
		font-size: 20px;
		text-align: center;
	}
	
	div#buttons a{
		color: black;
		border: 4px outset gray;
		width:23%;
		height:auto;
		text-align: center;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
		font-size: 16px;
	}
</style>
<script>
var isCheck = function() {
	var result = false;
	if ($('#checkPw').text()!="비밀번호가 다릅니다.") {
		result = true;
	}
	return result;
}

var init = function() {
	$("#quePw, #quePw2").blur(function(){
		var btn = document.getElementById('in');
		var pw1 = $("#quePw").val();
		var pw2 = $("#quePw2").val();
		$.ajax({
			url : 'in',
			type : 'post',
			cache: false,
			success : function(checkCount){
				if(pw1!=pw2){
					btn.disabled = true;
					$("#checkPw").text("비밀번호가 다릅니다.");
					$("#checkPw").css("color","red");
				}else{
					btn.disabled = false;
					$("#checkPw").text("");
				}
			},
			error:function(a,b,errMsg){
				alert("시스템 오류","고객센터에 문의해주세요.","error");
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
					<p id="title">비밀번호 입력</p>
					<br>
					<div id="inputs">
						<input name="quePw" id="quePw" type="password" maxlength="4" placeholder="비밀번호 입력" required/>
						<input id="quePw2" type="text" maxlength="4" placeholder="${Content.quePw}"/>
					</div>
					<div class="check_font" id="checkPw"></div>
					<br>
					<div id="buttons">	
						<a href="in" type="button"class="btn btn-default">확인</a>&nbsp;&nbsp;
						<a href="../question" type="button" class="btn btn-default">취소</a>
					</div>
				</div>
		</div>
	</div>
</body>
<br><br>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>