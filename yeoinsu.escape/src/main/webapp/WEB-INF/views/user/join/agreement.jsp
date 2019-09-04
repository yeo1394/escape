<%@ page language="java" contentType="text/html; charset=utf-8" pageEncoding="utf-8"%>
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
	
	div.col-md-6{
		margin-top: 3%;
		margin-bottom: 3%;
	}
	
	div#agreementImg{
		border: 2px solid white;
		width: 92%;
		height: 320px;
		
	}
	.col-md-6>p{
		color:white;
		font-size: 17px;
	}
	
	div.col-md-6>a{
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
	
	div#agreementImg{
		border: 2px solid white;
		width: 540px;
		height: 320px;
		color: white;
	}
</style>
<script>
	var isAgree = function() {
		var result = false;
	
		if ($('input#agree:checked').length) {
			result = true;
		}
		return result;
	}
	
	var init = function() {
		$("#agreeBtn").bind('click',function(){
			if(isAgree()){
				location.href="join";
			}else{
				$("#checkAgree").text("서약 동의를 체크해 주세요 .");
				$("#checkAgree").css("color","red");
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
						<h1>회원가입</h1><h4>|서약동의</h4>
					</div>
					<img src="<c:url value="/img/agreement.png"/>" style="max-width: 100%; height:auto;"/> 
					<br><br>
					<p><input id="agree" type="checkbox"> 위 사항에 동의하십니까?</p>
					<div class="check_font" id="checkAgree"></div><br>
					<a type="button" id="agreeBtn" class="btn btn-default">다음</a>&emsp;&emsp;&emsp;
					<a href="../main" class="btn btn-default">취소</a>
				</div>
		</div>
	</div>
</body>

<%@include file ="../../../resource/include/footnav.jsp" %>

<footer>
<%@include file ="../../../resource/include/footer.jsp" %>
</footer>
</html>