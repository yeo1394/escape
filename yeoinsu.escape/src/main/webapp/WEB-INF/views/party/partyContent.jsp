<%@page import="yeoinsu.escape.party.domain.Party"%>
<%@page import="yeoinsu.escape.user.login.domain.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	User user=(User)session.getAttribute("nowUser");
	Party party = (Party)request.getAttribute("Content");
%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">

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
	
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<link href="https://fonts.googleapis.com/css?family=Black+And+White+Picture|Metal+Mania&display=swap" rel="stylesheet">
<link href="https://fonts.googleapis.com/css?family=Poor+Story&display=swap" rel="stylesheet">
<script type="text/javascript" src="<c:url value='/ckeditor/ckeditor.js'/>"></script>
<title>escape</title>
<script>
var init = function() {
	$("#commentB").bind("click",function(){
		$("#comment").empty();
		var Com = {partyComContent:CKEDITOR.instances.inS.getData(),
					partyNo:$("#pNo").text()};
		$.ajax({
			url:"com",
			data:Com,
			success:function(comments){
				if(comments.length>0) {
					console.log(comments);
					var comList=[];
					$(comments).each(function(idx,com){
						comList.push(
							'<p>'+com.userId+'<br>'+
					 		'》'+com.partyComContent+'</p>'	
						)
					$('#comment').append(comList.join(''));	
					comList = [];
					CKEDITOR.instances.inS.setData("");
					});
				}
			},error: function() {
				console.log("error");
			}
		});
	});
}
$(init);
</script>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
body {
	font-family: 'Poor Story' ,cursive;
}

footer {
	font-family: "Helvetica Neue",Helvetica,Arial,sans-serif;
}

thead {
	
	background-color:rgb(45,45,45);
	color:white;
}

thead td {
	text-align:center;
	width:15%;
}

td[colspan] {
	width:35%;
}

#inGroup {
	background-color:#222;
	height:auto;
}
#aTagDiv {
	width:100%;
}

#aTag {
	margin-right:5px;
	float:right;
	margin-bottom:5px;
	background-color:rgb(72,72,72);
	color:white;
	border:none;
}

#del {
	margin-right:5px;
	float:right;
	margin-bottom:5px;
	background-color:rgb(72,72,72);
	color:white;
	border:none;
}

hr {
	margin-top:5px;
	margin-bottom:5px;
	clear:both;
}

#inImage {
	width:200px;
	height:200px;
	border:1px solid white;
	font-size:30px;
	color:white;
	margin:10px;
	text-align:center;
}

#inTime {
	width:200px;
	height:50px;
	border:1px solid white;
	font-size:30px;
	color:white;
	margin:10px;
	text-align:center;
}

#inContent {
	font-size:30px;
	color:white;
}

#comment {
	border-top:1px solid white;
	border-bottom:1px solid white;
	background-color:rgb(51,51,51);
	color:white;
}

#comment>p {
	font-size:16px;
}

#commentB {
	float:right;
	height:104px;
	width:16%;
	background-color:rgb(120,120,120);
	border:none;
	color:white;
}
</style>
<header>

<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<a class="navbar-brand center-block" href="../user/00.html">로고</a>
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
				<li><a href="01.html">&emsp;PARTY</a></li>
				<li><a href="#">&emsp;NOTICE</a></li>
				<li><a href="#">&emsp;Q&A</a></li>
		</ul>
		</div>
	</div>
</nav>
</header>
<body>
	<div class="container-fluid">
			<table class="table">
				<thead>
					<tr>
						<td id="pNo">${Content.partyNo}</td>
						<td colspan="5">${Content.partyTitle}</td>
						<td>${Content.partyWriter}</td>
						<td>${Content.partyDate}</td>
						<td>${Content.partyHits}</td>
					</tr>
				</thead>
			</table>
		<%if(user.getUserId().equals(party.getPartyWriter())){ %>
			<div id="aTagDiv">
				<a id="aTag" href="update?partyNo=${Content.partyNo}" class="btn btn-default">수정</a>
				<button id="del" class="btn btn-default">삭제</button>
			</div>
		<%} %>
		<hr>

	<div id="inGroup">
		<div id="inImage">
			${Content.partyThema}<img src="">
		</div>
		
		<div id="inTime">${Content.partyTime}</div>
		
		<div id="inContent">
			${Content.partyContent}
		</div>
	</div>
	
	<div id="comment">
		<c:forEach var="Com" items="${requestScope.Comment}">
				<p>${Com.userId}<br>
		 			》${Com.partyComContent}</p>	  	
		</c:forEach>  
	</div>
	
	<br>
	
	<button id="commentB" type="button" class="btn btn-default">등록</button>
	<textarea id="inS" id="comText"></textarea>
	<script>
		CKEDITOR.replace('inS', {
			height: "60px",
			width: "85%",
			border:"1px solid white",
			resize_enabled:false
		});
	</script>	
	
	<br>
	
	</div>
</body>

<div class="container"  id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="../main.html"><span class="glyphicon glyphicon-log-out"><br>로그아웃</span></a>
	<a id="b2" type="button" class="btn btn-default" href="../user/11.html"><span class="glyphicon glyphicon-asterisk"><br>계정관리</span></a>
</div>
<script>
function alert4() {
	swal({
		title:"삭제하시겠습니까?",
		text:"삭제된 게시글은 복구되지 않습니다.",
		type:"warning",
		showCancelButton: true,
		cancelButtonText:"아니오",
		confirmButtonText:"네",
		closeOnConfirm:false
	},
	function(isConfirm){
		if(isConfirm) {
			location.href="delete?partyNo=${Content.partyNo}";
		}
	});
}

var init1 = function(){
	$('#del').bind('click',function(){
		alert4();
	});
}
$(init1);
</script>

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