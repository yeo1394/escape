<%@page import="yeoinsu.escape.party.service.ParPageServiceImpl"%>
<%@page import="yeoinsu.escape.party.domain.ParPage"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<meta http-equiv="x-ua-compatible" content="ie=edge">

<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">

<link rel="stylesheet"
	href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />

<script
	src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>

<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>

<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Black+And+White+Picture|Metal+Mania&display=swap"
	rel="stylesheet">
<script type="text/javascript"
	src="<c:url value='/ckeditor/ckeditor.js'/>"></script>
<link
	href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap"
	rel="stylesheet">
<title>main</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');

body {
	font-family: 'Poor Story', cursive;
}

footer {
	font-family: "Helvetica Neue", Helvetica, Arial, sans-serif;
}

h1 {
	color: white;
	font-size: 40px;
	margin-top: -55px;
	margin-bottom: 20px;
}

#out {
	height: 80%;
	width: 100%;
}

#Title {
	color: white;
	font-size: 30px;
}

#Thema {
	margin-left: 10%;
	margin-top: 15%;
}

select {
	width: 40%;
	height: 30px;
	display: inline;
	background-color: white;
	margin-bottom: 2%;
}

#commentB {
	margin-top: 1%;
	margin-right: 15%;
	float: right;
	height: 30px;
	width: 80px;
	background-color: rgb(72, 72, 72);
	color: white;
	border: none;
}

hr {
	margin-top: 5px;
	margin-bottom: 10px;
	border: 1px solid gray;
	width: 85%;
	margin-right: 50%;
}
</style>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
	<div class="container-fluid">
		<div id="out">
			<div id="Thema">
			<%if(request.getAttribute("party") == null){ %>
				<form action="join">
			<%}else{ %>
				<form action="updateIn">
			<%} %>
					<h1>파티모집 글쓰기</h1>
					<hr>
					<input type="hidden" name="partyNo" value="${party.partyNo}">
					<span id="Title">테마 선택 : </span> <select
						class="dropdown-primary select-lg mb-3" id="partyThema" name="partyThema">
						<c:forEach var="thema" items="${requestScope.thema}">
							<c:if test="${thema.themaLevel ne 48}"> 	
								<option value="${thema.themaTitle}">${thema.themaTitle}</option>
							</c:if>			
						</c:forEach>
					</select>
					<hr>
					<span id="Title">시간 선택 : </span> <select
						class="dropdown-primary select-lg mb-3" name="partyTime">
						<option value="10:00~11:00">10:00~11:00</option>
						<option value="12:00~13:00">12:00~13:00</option>
						<option value="14:00~15:00">14:00~15:00</option>
						<option value="16:00~17:00">16:00~17:00</option>
						<option value="18:00~19:00">18:00~19:00</option>
					</select>
					<hr>
					<textarea id="inS" name="partyContent"></textarea>
					<script>
						CKEDITOR.replace('inS', {
							width : "85%",
							height : "300px",
							border : "1px solid white",
							resize_enabled : false
						});
						CKEDITOR.instances.inS.setData("${party.partyContent}")
					</script>
					<hr>
					<%
						if (request.getAttribute("party") == null) {
					%>
					<button id="commentB" type="submit" class="btn btn-default">등록</button>
					<%
						} else {
					%>
					<button id="commentB" type="submit" class="btn btn-default">수정</button>
					<%} %>
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