<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="yeoinsu.escape.user.login.domain.User"%>
<%@ page import="yeoinsu.escape.question.domain.Question" %>
<%
	User users=(User)session.getAttribute("nowUser");
	Question question = (Question)request.getAttribute("Content");
%>
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
<script type="text/javascript"	src="<c:url value='/ckeditor/ckeditor.js'/>"></script>
<title>escape</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');	
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');

@media (min-width:0px) and (max-width:1023px){
	.writetxt{
		font-size: 10px;
	}
}

div.justified {
	justify-content: center;
	margin-right: 5%;
}

 #text{
 	height:80%;
 }
 
div#qnabt-write>a{
	font-size: 100%;
	color: black;
	border: 4px outset gray;
	height:auto;
	text-align: center;
	font-weight: bold;
	font-family: 'Poor Story', cursive;
	float:right;
}

#btnDelete{
	font-size: 100%;
	color: black;
	border: 4px outset gray;
	height:auto;
	text-align: center;
	font-weight: bold;
	font-family: 'Poor Story', cursive;
	float:right;
}

.textarea_test {
    margin-left: 13.5%;
    resize:none;
    line-height:15px;
    width:70%;
    height:45px;
    border:1px solid #ccc;
    margin-bottom: 3%;
    float:left;
}

#commentB {
	text-align: center;
	font-size: 120%;
	font-weight: bold;
	font-family: 'Poor Story', cursive;
	border: 7px outset gray;
	float:right;
	height:104px;
	width:16%;
	color:black;
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
#tabtext{
	color:white;
}
</style>
<script>
var init = function() {
	$("#commentB").bind("click",function(){
		$("#comment").empty();
		var Com = {queComContent:CKEDITOR.instances.inS.getData(),
					queNo:$("#pNo").val()};
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
					 		'》'+com.queComContent+'</p>'	
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
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
	<div id="qnabt-write">
		<%if(users.getUserId().equals(question.getUserId())){ %>
			<button id="btnDelete" type="button" class="btn btn-default" >삭제</button>
			<a id="btnupdate" type="button" class="btn btn-default" href="update?queNo=${Content.queNo}">수정</a>
		<%} %>
			<a type="button" class="btn btn-default" href="../question">목록</a>
		<br>
		<br>
		<div class="qnatable">
			<table class="table table-dark">
				<tr>
					<th width="30%"><h4 id="tabtext">글&nbsp;쓴&nbsp;이:</h4></th>
					<td width="70%"><h4 id="queWriter" style="color: white;">${Content.queWriter}</h4></td>
				</tr>
				<tr>
					<th><h4 id="tabtext">작&nbsp;성&nbsp;일:</h4></th>
					<td><h4 id="queDate" style="color: white;"><fmt:formatDate value="${Content.queDate}" pattern="MM-dd" /></h4></td>
				</tr>
				<tr>
					<th><h4 id="tabtext">제&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;목:</h4></th>
					<td><h4 id="queTitle" style="color: white;">${Content.queTitle}</h4></td>
				</tr>
				<tr>
					<th><input id="pNo" type="hidden" value="${Content.queNo}"></th>
					<td></td>
				</tr>
			</table>
		</div>
			<text class="noresize" id="queContent" name="queContent" readonly="readonly" disabled
			style="color:white; font-size: 200%;">
			${Content.queContent}
			</text>
		<hr>
		<div id="comment">
		<c:forEach var="Com" items="${requestScope.Comment}">
				<p>${Com.userId}<br>
		 			》${Com.queComContent}</p>	  	
		</c:forEach>  
		</div>
		<br>
		<button id="commentB" type="button" class="btn btn-default">등록</button>
	<textarea id="inS"></textarea>
	<script>
		CKEDITOR.replace('inS', {
			height: "60px",
			width: "85%",
			border:"1px solid white",
			resize_enabled:false
		});
	</script>
	<br><br><br>

	</div>
</body>
<br><br>

<%@include file ="../../resource/include/footnav.jsp" %>
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
			location.href="delete?queNo=${Content.queNo}";
		}
	});
}

var init1 = function(){
	$('#btnDelete').bind('click',function(){
		alert4();
	});
}
$(init1);
</script>

<footer>
	<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>