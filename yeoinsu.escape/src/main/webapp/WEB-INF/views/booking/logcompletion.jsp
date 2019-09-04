<%@page import="yeoinsu.escape.schedule.domain.Schedule"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="yeoinsu.escape.user.login.domain.User"%>
<%@page import="yeoinsu.escape.booking.domain.Booking"%>
<%
Booking bUser = (Booking)session.getAttribute("bUser");
Schedule sUser = (Schedule)session.getAttribute("sUser");
String nowImg2 = (String)session.getAttribute("nowImg2");
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

#font {
	font-family: 'Poor Story', cursive;
	font-size: x-large;
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

#hana {
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

#text2 {
	color: white;
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

tr {
	border: solid #222;
}

@media ( min-width :0px) and (max-width:1024px) {
	#text {
		font-size: 17px;
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
<script>
	$(document).ready(function() {
		$('#nobtn').click(function() {
			var con_test = confirm("예약을 취소하시겠습니까??");
			if (con_test == true) {
				$.ajax({
					url : "cancle",
					type : "get",
					data :{
						scheNo : $("input[name=scheNo]").val()
					},
					success : function(aa) {
						alert("예약이 취소 되었습니다.");
						location.href = "../main";
					},
				});
			} else if (con_test == false) {
				alert("취소되었습니다.");
				console.log("asdasd")
			}
		});
	});
</script>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>

	<!-- 예약정보 확인 -->
<div id="font">
	<div id="box" style="font-size: xx-large;">
		<p><%=bUser.getBookName() %>님 예약현황</p>
	</div>
	<hr>
	<div class="container">
		<div id="haha" align="center">
			<table class="table Basic Table">
				<tbody>
					<tr>
						<th rowspan="5">
							<img id=img src="<c:url value="/img/"/><%=nowImg2%>">
						</th>
						<td style="width: 15%;"><p id="text">ROOM.</p></td>
						<td><p id="text"><%=sUser.getScheTitle() %></p></td>
					</tr>
					<tr>
						<td><p id="text">TIME.</p></td>
						<td><p id="text"><%=sUser.getScheTime() %></p></td>
					</tr>
					<tr>
						<td><p id="text3">예약자.</p></td>
						<td><p id="text"><%=bUser.getBookName() %></p></td>
					</tr>
					<tr>
						<td><p id="text3">인원수.</p></td>
						<td><p id="text"><%=bUser.getBookCnt() %></p></td>
					</tr>
					<tr>
						<td><p id="text">가격.</p></td>
						<td><p id="text"><%=bUser.getBookPrice() %></p></td>
					</tr>
				</tbody>
			</table>
		</div>
		<div id="hana">
			<p id="text2" align="left">※ 예약 취소는 하루 전까지 가능합니다.(당일 취소 시 소액의 금액
				지불).</p>
			<p id="text2" align="left">※ 입장시간 10분 전까지 도착하여 주세요.</p>
			<p id="text2" align="left">※ 입실 시 음식은 반입이 불가능합니다.</p>
			<p id="text2" align="left">※ 다음 사용자를 위해 기물파손 및 도난은 절대 안됩니다.</p>
			<p id="text2" align="left">※ 모든 테마룸은 CCTV 촬영 중 입니다.</p>
		</div>
		<br><br>
		<div align="center">
		<!-- <form action="cancle"> -->
		<form>
			<input name="scheNo" value=<%=bUser.getScheNo() %> type="hidden"/>
			<a href="../main" class="btn btn-default">확인</a>&emsp;&emsp;&emsp;
			<button id="nobtn" type="button" class="btn btn-default">예약취소하기</button>
			<br><br><br>
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