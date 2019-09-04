<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List" %>
<% 
User nowUser=null;
String nowUserId = "";
if(session.getAttribute("nowUser") != null){
	nowUser = (User)session.getAttribute("nowUser");
	nowUserId = nowUser.getUserId();
} 
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
<title>escape</title>
</head>
<style>
	@import url("/escape/css/basicStyle.css");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
	
#font{
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

#btn {
	color: white;
	width: 100%;
	font-weight: bold;
	background-color: black;
	height: 30%;
}

.test {
	color: white;
	background-color: black;
}

#btn3 {
	color: red;
	background-color: black;
}

#btn4 {
	color: white;
	width: 100%;
	font-weight: bold;
	background-color: black;
	height: 30%;
}

.dropdown-menu {
	background-color: black;
	text-align: center;
	margin-right: auto;
	min-width: 100%;
}

.dropdown-menu>li>button {
	color: rgb(150, 150, 150);
	background-color: black;
	border: black;
	width: 100%;	
}

hr {
	color: white; /*IE*/
	border-color: gray; /*사파리*/
	background-color: gray; /*크롬,모질라 등 기타브라우저*/
	height: 0.3%;
}

table {
	color: white;
}

th, td {
	text-align: center;
}

#haha {
	/* 	border: 3px solid orange; */
	width: 100%;
	height: auto;
}

#bx1 {
	/* border: 1px solid lime; */
	width: 30%;
}

#bx2 {
	/* border: solid red 1px; */
	width: 30%;
	margin-left: 5%;
}

div#haha #bx1, #bx2 {
	display: inline-block;
}

@media ( min-width :0px) and (max-width:1024px) {
	#box {
		font-size: 17px;
	}
}

</style>
<script>

var init = function() {
		// 리스트 태그 생성
		function makeListHtml(scheLevel, scheState, scheTime, scheTitle, scheNo) {
			// 난이도
			var star = "";
			for (var i = 1; i <= 5; i++) {
				if (scheLevel == i) {
					for (var j = 0; j < i; j++) {
						star += "★";
					}
					for (var j = 0; j < 5 - i; j++) {
						star += "☆";
					}
				}
			}

			// 예약버튼
			if (scheState == 0) {
				text = "예약";
			} else if(scheState == 1){
				text = "매진";
			} else {
				text = "준비중";
			}

			// 리스트 태그
			var html="";
			var userId = "<%=nowUserId%>";
			if(userId == "admin"){
				html = "<tr>" + "<td>" + scheTime + "</td>" + "<td>" + scheTitle
					+ "</td>"
					+ "<td>" + star + "</td>"
					+ "<td><button class='test' type='submit' value='"+ scheNo +"'>"
					+ text + "</button></td>"
					+ "<td><button class='test' type='button' id='statement' value='"+scheNo+"'>"
					+ "취소" + "</button></td>" + "</tr>"
			}else{
				html = "<tr>" + "<td>" + scheTime + "</td>" + "<td>" + scheTitle
				+ "</td>"
				+ "<td>" + star + "</td>"
				+ "<td><button class='test' type='submit' value='"+ scheNo +"'>"
				+ text + "</button></td>"
				+"</tr>"
			}
			return html;
			
		}
		//테마 목록
		$.ajax({
			url : "booking/getSchedules",
			type : "get",
			success : function(schedules) {
				console.log(schedules)
				if (schedules.length > 0) {
					var schedulesList = [];
					$(schedules).each(
							function(idx, schedule) {
								schedulesList.push(makeListHtml(
										schedule.scheLevel, schedule.scheState,
										schedule.scheTime, schedule.scheTitle,
										schedule.scheNo));
							});
					$("#schedulesList").append(schedulesList.join(""));
				}
			},
			error : function(a, b, errMsg) {
				alert(errMsg, "error");
			}
		});
		//매진->예약
		<%	if(nowUserId.equals("admin")){ %>
				$(document).on("click","#statement",function() {
					console.log($(this).val())
					$.ajax({
						url : "booking/statement",
						type : "get",
						data : {
							scheNo : $(this).val()
						},
						success : function(number) {
							if(number == 0) {
								alert("예약되어 있지 않습니다.");
							}else {
								alert("해당 테마의 예약이 취소되었습니다.");								
							}
						},
						error : function(a, b, errMsg) {
							alert(errMsg, "error");
						}
					});
				});
		<%	} %>
		// 테마 선택
		$(document).on("click","#thema1",function() {
					$.ajax({
						url : "booking/getSchedule",
						type : "get",
						data : {
							scheTitle : $(this).val()
						},
						success : function(schedule) {
							$("tbody").empty();
							if (schedule.length > 0) {
								var schedulesList = [];
								$(schedule).each(
										function(idx, schedule) {
											schedulesList.push(makeListHtml(
													schedule.scheLevel,
													schedule.scheState,
													schedule.scheTime,
													schedule.scheTitle,
													schedule.scheNo));
										});
								$("#schedulesList").append(
										schedulesList.join(""));
							}
						},

						error : function(a, b, errMsg) {
							alert(errMsg, "error");
						}
					});
				});

		// 예약 가능 테마
		$("#btn4").bind("click",function() {
					$.ajax({
						url : "booking/getSchestate",
						type : "get",
						data : {
							scheState : $("#btn4").val()
						},
						success : function(schedule) {
							$("tbody").empty();
							if (schedule.length > 0) {
								var schedulesList = [];
								$(schedule).each(
										function(idx, schedule) {
											schedulesList.push(makeListHtml(
													schedule.scheLevel,
													schedule.scheState,
													schedule.scheTime,
													schedule.scheTitle,
													schedule.scheNo));
										});
								$("#schedulesList").append(
										schedulesList.join(""));
							}
						},

						error : function(a, b, errMsg) {
							alert(errMsg, "error");
						}
					});
				});

		// 예약버튼
		$(document).on("click", ".test", function() {
			var val = $(this).val();
			var text = $(this).html();
			if (text == "예약") {
				$.ajax({
					url : "booking/getScheno",
					type : "get",
					data : {
						scheNo : val
					},
					success : function() {
						location.href = "booking/input";
					},
					error : function(a, b, errMsg) {
						alert(errMsg, "error");
					}
				});
			}
		});

		// 드롭다운
		$.ajax({url : "thema/getThemas",
			type : "get",
			success : function(themas) {
						if (themas.length > 0) {
							var dropList = [];
							$(themas).each(function(idx, thema) {
								dropList.push("<li><button type='button' id='thema1' value='"+thema.themaTitle+"'>"
								+ thema.themaTitle
								+ "</button><li>"
								+ "<li class='divider'></li>");
											});
							$("#dropList").append(dropList.join(""));
						}
					},
					error : function(a, b, errMsg) {
						alert(errMsg, "error");
					}
				});

	}

	$(init);
</script>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>

	<!-- 예약하기 -->
<div id="font">
	<div id="box" style="font-size: xx-large;">
		<a href="booking" style="color: white; text-decoration: none">예약하기</a>&nbsp;&nbsp;/&nbsp;&nbsp;
		<a href="booking/booklogin" style="color: gray; text-decoration: none">예약확인</a>
	</div>
	<hr>
	<div id="wrap">
		<div id="haha" align="center">
			<div id="bx1">
				<div class="dropdown">
					<button id="btn" type="button"
						class="btn btn-default dropdown-toggle" data-toggle="dropdown">
						테마 선택<span class="caret"></span>
					</button>
					<ul class="dropdown-menu" id="dropList">
					</ul>
					
				</div>
			</div>
			<div id="bx2">
				<button class="btn btn-default" id="btn4" type="button" value=0>예약가능테마</button>
			</div>
		</div>
	</div>
	<hr>
	<div>
		<table class="table Basic Table">
			<thead>
				<tr>
					<th>시간</th>
					<th>테마</th>
					<th>난이도</th>
					<th>예약</th>
<%if(nowUserId.equals("admin")){ %>
					<th>취소</th>
<%} %>
				</tr>
			</thead>
			<tbody id="schedulesList">
			</tbody>
		</table>
	</div>
</div>
	<!-- 예약하기 -->
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>