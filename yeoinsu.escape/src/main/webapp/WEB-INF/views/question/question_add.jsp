<%@ page language="java" contentType="text/html; charset=utf-8"	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="yeoinsu.escape.question.service.PageServiceImpl"%>
<%@ page import="yeoinsu.escape.question.service.QuestionServiceImpl"%>
<%@ page import="yeoinsu.escape.question.domain.Page"%>
<%@ page import="yeoinsu.escape.user.login.domain.User"%>
<%
	User users=(User)session.getAttribute("nowUser");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css"/>
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script type="text/javascript"	src="<c:url value='/ckeditor/ckeditor.js'/>"></script>
<title>escape</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');	
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
	
	#qnabt-write{
		float: right;
		font-size: 120%;
		margin-left: 1%;
		margin-right: 1%;
		color: black;
		border: 4px outset gray;
		height:auto;
		text-align: center;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
	}

	#commentB {
		float: right;
		font-size: 120%;
		margin-left: 1%;
		margin-right: 1%;
		color: black;
		border: 4px outset gray;
		height:auto;
		text-align: center;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
	}
</style>
<script>
function alert() {
	swal({
		title:"취소하시겠습니까?",
		text:"취소한 파일은 복구되지 않습니다.",
		type:"warning",
		showCancelButton: true,
		cancelButtonText:"아니오",
		confirmButtonText:"네",
		closeOnConfirm:false
	},
	function(){
		swal("성공","취소 되었습니다.","success");
		location.href="../question";
	});
}
function alert1() {
	swal({
		title:"목록으로 가시겠습니까?",
		text:"작성한 파일은 복구되지 않습니다.",
		type:"warning",
		showCancelButton: true,
		cancelButtonText:"아니오",
		confirmButtonText:"네",
		closeOnConfirm:false
	},
	function(){
		swal("성공","취소 되었습니다.","success");
		location.href="../question";
	});
}
</script>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
	<div class="qnawrite">
		<a id="qnabt-write" type="button" class="btn btn-default" onClick="alert1()">목록</a>
		<h4 style="color: white; font-size: 160%;">Q&A 글쓰기</h4> 
		<form action="join">
		<div class="qnatable">
			<input type="hidden" name="queNo" value="${question.queNo}"/>
			<table class="table table-dark" width="850px">
				<tr>
					<th width="30%"><h4 style="color: white;">이&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;름</h4></th>
					<td width="70%"><h4 style="color: white;"><% out.println(users.getUserName()); %></h4></td>
				</tr>
				<tr>
					<th><h4 style="color: white;">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목</h4></th>
					<td><h4><input id="queTitle" name="queTitle" type="text" placeholder="제목을 입력해주세요" required></h4></td>
				</tr>
				<tr>
					<th><input type="hidden" id="queWriter" name="queWriter" value="<% out.println(users.getUserName()); %>"></th>
					<td></td>
				</tr>
			</table>
		</div>
		<div class="writetxt">
			<textarea id="inS" name="queContent"></textarea>
				<script>
					CKEDITOR.replace('inS', {
						width : "100%",
						height: "300px",
						border : "1px solid white",
						resize_enabled : false
					});
					CKEDITOR.instances.inS.setData("${question.queContent}")
				</script>
		</div>
		<hr>
		<% if (request.getAttribute("question") == null) { %>
		<a id="qnabt-write" type="button" onClick="alert()" class="btn btn-default">취소</a>
		<button id="qnabt-write" type="submit" class="btn btn-default">확인</button>
		<% } %>
		</form>
		<br style="clear:both;">
		<br>
	</div>
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>