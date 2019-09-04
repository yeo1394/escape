<%@page import="yeoinsu.escape.thema.service.ThemaServiceImpl"%>
<%@page import="yeoinsu.escape.thema.service.ThemaService"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="yeoinsu.escape.thema.domain.Thema"%>
<%@page import="yeoinsu.escape.booking.domain.Booking"%>
<%@page import="yeoinsu.escape.schedule.domain.Schedule"%>
<%
Booking booking = (Booking)session.getAttribute("booking");
Schedule schelist = (Schedule)session.getAttribute("sche");
String nowImg = (String)session.getAttribute("nowImg");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>escape</title>
</head>
<style>
	@import url("/escape/css/basicStyle.css");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
#font{
	font-family: 'Poor Story', cursive;
	font-size: x-large;
}

#con {
	height: 68%;
	margin-bottom: 5%;
}

#box {
	width: 30%;
	height: auto;
	margin-left: 35%;
	margin-top: 2%;
	margin-bottom: 2%;
	text-align: center;
	color: white;
}

#haha {
	/* border: 3px solid orange; */
	width: 100%;
	height: 100%;
}

#hana{
	/* border: solid red; */
	margin-top: 1%
}

#img {
	width: 90%;
	height: 60%;
}

#text,#text3 {
	color: white;
}

#text2{
	color:white;
	font-size: medium;
	margin-left: 11%;
}

hr {
	color: white; /*IE*/
	border-color: gray; /*사파리*/
	background-color: gray; /*크롬,모질라 등 기타브라우저*/
	height: 0.3%;
}

table {
	border: solid #222;
	height: 100%;
}

.table {
	width: 80%;
}

th {
	width: 50%;
}

tr{
	border: solid #222;
}

@media ( min-width :0px) and (max-width:1024px) {
	#text {
		font-size: 15px;
	}
	#img {
	width: 100%;
	height: 45%;
	}
	#text3{
		font-size: 15px;
	}
}
</style>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>

	<!-- 예약완료 -->
<div id="font">
	<div id="box" style="font-size: xx-large;">
		<p>예약 완료</p>
	</div>
	<hr>
	<div class="container" id="con">
		<div id="haha" align="center">
			<table class="table Basic Table">
				<tbody>
					<tr>
						<th rowspan="5">
							<img id="img" src="<c:url value="/img/"/><%=nowImg%>">
						</th>
						<td style="width: 15%;"><p id="text">ROOM.</p></td>
						<td><p id="text"><%=schelist.getScheTitle() %></p></td>
					</tr>
					<tr>
						<td><p id="text">TIME.</p></td>
						<td><p id="text"><%=schelist.getScheTime() %></p></td>
					</tr>
					<tr>
						<td><p id="text3">예약자.</p></td>
						<td><p id="text"><%=booking.getBookName() %></p></td>
					</tr>
					<tr>
						<td><p id="text3">인원수.</p></td>
						<td><p id="text"><%=booking.getBookCnt() %></p></td>
					</tr>
					<tr>
						<td><p id="text">금액.</p></td>
						<td><p id="text"><%=booking.getBookPrice() %>&nbsp;원</p></td>
					</tr>
				</tbody>
			</table>
		</div>
			<div id="hana">
				<p id="text2" align="left">※ 기재한 E-Mail로 예약정보가 발송되었습니다.</p>
			</div>
	</div>

</div>
	<!-- 예약완료 -->

</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>