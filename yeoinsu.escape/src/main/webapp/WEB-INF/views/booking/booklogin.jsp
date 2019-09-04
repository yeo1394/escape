<%@page import="com.sun.xml.internal.txw2.Document"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="yeoinsu.escape.booking.domain.*"%>

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
	@import url("/escape/css/basicStyle.css");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');

#font {
	font-family: 'Poor Story', cursive;
	font-size: large;
}

#box {
	width: 100%;
	height: auto;
	margin-top: 2%;
	margin-bottom: 2%;
	text-align: center;
	color: white;
}

input#id {
	width: 38%;
}

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

div#title {
	margin-bottom: 4%;
	font-family: 'Poor Story', cursive;
}

#title h1, h4 {
	display: inline;
	color: white;
}

div.col-md-6>form>a {
	border: 4px inset gray;
	font-weight: bold;
	font-family: 'Poor Story', cursive;
	font-size: 17px;
	width: 20%;
	height: auto;
}

div.col-md-6 {
	margin-top: 3%;
	margin-bottom: 2%;
}

#dk {
	border: solid white 2px;
	color: white;
	font-size: 2rem;
	width: 170px;
	font-family: 'Metal Mania', cursive;
}

#btn{
	margin-bottom: 15%;
}

#inputsize {
	width: 200px;
	height: auto%;
}

#text {
	color: white;
	font-size: medium;
	font-weight: bold;
}

#text2 {
	color: white;
	font-size: small;
}

#hr1{
	width: 65%;
}

@media ( min-width :0px) and (max-width:1024px) {
	#text {
		font-size: 17px;
	}
}
</style>
<script>
var init = function() {
	$('#okBtn6').bind('click', function() {
		$.ajax({
			url: "comUser",
			type: "post",
			data: {
				bookTel:$("#bookTel").val()
			},
			cache: false,
			success:function(booking){
				if(booking.bookTel==null || booking.bookTel==""){
					$("#bookTel").focus();
					$("#checkLogin").text($("#bookTel").val()+" 연락처로 예약된 정보가 없습니다.");
					$("#checkLogin").css("color","red");
				}else if($('#bookName').val()==booking.bookName){
					location.href="logcompletion";
				}else{
					$("#checkLogin").text($("#bookName").val()+" 님과 연락처가 일치하는 정보가 없습니다.");
					$("#checkLogin").css("color","red");
				}
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
		<!-- 예약정보 확인 -->
	<div id="font">
		<div id="box" style="font-size: xx-large;">
			<a href="../booking" style="color: gray; text-decoration: none">예약하기</a>&nbsp;&nbsp;/&nbsp;&nbsp;
			<a href="booklogin" style="color: white; text-decoration: none">예약확인</a>
		</div>
		<hr>
		<div class="container">
			<br>
				<div class="col-md-6 col-md-offset-3 text-center">
					<div id="title">
						<h1>정보 입력</h1>
						<hr id="hr1">
					</div>
					<div>
						<p id="text">이름/연락처로 정보 확인</p>
					</div>
					<br>
					<form action="comUser" method="post">
						<input id="bookName" type="text" placeholder="이름 입력" autocomplete=off /><br>
						<input id="bookTel" type="tel" placeholder="핸드폰 번호 입력(-제외)" autocomplete=off /><br>
						<div class="check_font" id="checkLogin">　</div>
						<br> 
						<a id="okBtn6" type="submit" class="btn btn-default">확인</a>&emsp;&emsp;&emsp; 
						<a href="../main" class="btn btn-default">취소</a>
					</form>
				</div>
		</div>
	</div>

	<!-- 예약정보 확인 -->

</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>
