<%@page import="yeoinsu.escape.user.login.domain.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<% User users=(User)session.getAttribute("nowUser"); %>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<title>escape</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');	
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
	
	h1,h2,h3,h4,h5,h6,th,td,#p-text,#listPage,#deleteButton, #updateButton,#textarea{
		color: white;
		font-family: 'Poor Story', cursive;
	}
	p{
		margin: 0px;
	}
	#notice{
		margin-bottom: 10px;
	}
	#notice-list{
		margin-top: 10px;
		margin-bottom: 100px;
		width: 97%;
		height: 600px;
		text-align: center;
		border-collapse:collapse;
	}
	th, td{
		background-color: #222;
		text-align: center;
		border-top: 1px solid gray;
		border-bottom: 1px solid gray;
		height:50px;
		font-size: 16px;
		vertical-align: middle !important;
	}
	#listPage{
		padding: 14px 24px;
		font-size: 16px;
		border-radius: 12px;
		background-color: #222;
		border: 2px solid gray;
		text-align: center;
		float: right;
		text-decoration: none;
		/*visibility: hidden;*/
		margin-bottom: 15px;
	}
	#deleteButton{
		padding: 14px 24px;
		font-size: 16px;
		border-radius: 12px;
		background-color: #222;
		border: 2px solid gray;
		text-align: center;
		float: right;
		text-decoration: none;
		/*visibility: hidden;*/
		margin-top:15px;
	}
	#updateButton{
		padding: 14px 24px;
		font-size: 16px;
		border-radius: 12px;
		background-color: #222;
		border: 2px solid gray;
		text-align: center;
		float: right;
		text-decoration: none;
		/*visibility: hidden;*/
		margin-top:15px;
		margin-right: 15px;
	}
	#textarea{
		margin-top: 5px;
		writing-mode: horizontal-tb; 
		resize: none;
		border: none;
		background-color: transparent;
		height: 250px;
		width: 98%;
		word-break: break-all;
		border-bottom: 1px solid gray;
		margin: 0 auto;
	}
	#textarea:focus{
			outline: none;
	}
	#updateButton:focus{
			outline: none;
	}
	#deleteButton:focus{
			outline: none;
	}
	
	@media (min-width: 0px) and (max-width: 1023px){
		#notice-list{
			height: 500px;
		}
		td{
			font-size: 12px;
		}
		#col18{
			width: 18%;
		}
		#col40{
			width: 40%;
		}
		#deleteButton{
			padding: 11px 15px;
			font-size: 10px;
			margin-top: 10px;
		}
		#updateButton{
			padding: 11px 15px;
			font-size: 10px;
			margin-top: 10px;
		}
		#listPage{
			padding: 11px 15px;
			font-size: 10px;
			margin-bottom: 10px;
		}
		#textarea{
			height: 204px;
		}
	}

	#mb1{
		width: 50%;	
		float: left;
		background-color : #222;
		border: 4px outset gray;
		color: gray;
		
	}
	#mb2{
		width:25%;
		float: left;
		background-color : #222;
		border : 4px outset gray;
		color: gray;
		
	}
	#mb3{
		width:25%;
		float: right;
		background-color : #222;
		border : 4px outset gray;
		color: gray;
	}
</style>
 
<script>
$(function(){
	$("#updateButton").click(function(){						
		document.listForm.action="${path}/notice/updateNotice/${notice.noticeNo}";
		document.listForm.submit();
	});
	$("#deleteButton").click(function(){
		var result = confirm("공지사항을 삭제하시겠습니까?");
		if(result){
			document.listForm.action="${path}/notice/deleteNotice";
			document.listForm.submit();
			alert("공지사항이 삭제되었습니다.");
		}else{
		   	alert("삭제가 취소되었습니다.");
			return;
		}
	});
});
</script>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
	<div class="container" id="notice-list">
		<div id="notice">
			<p id="p-text" style="font-size: 50px">공지사항</p> 
			<p id="p-text" style="font-size: 25px">Notice</p>
		</div>
		<form name="listForm" method="post">
			<input type="hidden" name="noticeNo" value="${notice.noticeNo}">
			<div>
				<a id="listPage" type="button" class="btn btn-default" href="../noticeList">목록</a>
			</div>
			<table class="table">
				<colgroup>
					<col>
					<col width="180">
					<col width="100">
				</colgroup>
				<tbody>
					<tr>
						<td colspan="3" style="text-align:left">${notice.noticeTitle}</td>
					</tr>
					<tr>
						<td style="text-align:left">글쓴이 : ${notice.noticeWriter} </td>
						<td id="col40">작성일 : <fmt:formatDate value='${notice.noticeDate}' pattern='yy-MM-dd'/></td>
						<td id="col18">조회 : ${notice.noticeHits}</td>
					</tr>
				</tbody>
			</table>
			
			<div id="textarea" style="text-align:left">${notice.noticeContent}</div>
			<%
				if(users!=null && users.getUserId().equals("admin")){ 
			%>
				<input type="button" id="deleteButton" value="삭제">
				<input type="button" id="updateButton" value="수정">
			<%
				}
			%>
		</form>
	</div>
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>