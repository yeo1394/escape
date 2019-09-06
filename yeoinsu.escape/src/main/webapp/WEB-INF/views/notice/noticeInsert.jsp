<%@page import="yeoinsu.escape.user.login.domain.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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
<script type="text/javascript"   src="<c:url value='/ckeditor/ckeditor.js'/>"></script>
<c:set var="path" value="${pageContext.request.contextPath}"/>
<title>escape</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');	
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
	
	h1,h2,h3,h4,h5,h6,th,td,#p-text,#listPage,#cancelButton,#okButton,#textarea,#radiolabel,#radiotext{
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
	#cancelButton{
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
	#okButton{
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
		resize: none;	/*사용자 임의 변경 불가*/
		border: 1px solid gray;
		background-color: #222;
		height: 250px;
		width: 98%;
		word-break: break-all;
		margin-top: 5px;
	}
	#text{
		width: 100%;
		text-align: left;
		background-color: transparent;
		border: 1px solid gray;
		text-align: left;
	}
	#radiotext{
		margin-right: 10px;
	}
	#radio{
		text-align: left;
	}
	.table{
		margin-bottom: 0px;
	}
	#text:focus{
		outline: none;
	}
	#textarea:focus{
		outline: none;
	}
	#okButton:focus{
		outline: none;
	}

	@media (min-width: 0px) and (max-width: 1023px){
		#notice-list{
			height: 500px;
		}
		th{
			font-size: 12px;
		}
		#col12{
			width: 12%;
		}
		#col15{
			width: 15%;
		}
		#cancelButton{
			padding: 11px 15px;
			font-size: 10px;
			margin-top: 10px;
			margin-bottom: 10px;
		}
		#okButton{
			padding: 11px 15px;
			font-size: 10px;
			margin-top: 10px;
			margin-bottom: 10px;
		}
		#listPage{
			padding: 11px 15px;
			font-size: 10px;
			margin-bottom: 10px;
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
<header>
<% if(users==null || !users.getUserId().equals("admin")){ %>
	<c:redirect url="/login"/>
<%} %>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
	<div class="container" id="notice-list">
		<div id="notice">
			<p id="p-text" style="font-size: 50px">공지사항</p> 
			<p id="p-text" style="font-size: 25px">Notice</p>
		</div>
			<form method="post" action="noticeInsert">
				<div>
					<a id="listPage" type="button" class="btn btn-default" href="noticeList">목록</a>
				</div>
				<input type="hidden" id="userId" name="userId" value="admin">
				<input type="hidden" id="noticeWriter" name="noticeWriter" value="관리자">
				<table class="table">	
						<tr>
							<th>
								<input type="text" id="text" name="noticeTitle" placeholder="제목을 입력하세요." autocomplete="off" required>
							</th>	
						</tr>
						<tr>
							<th>
								<div id="radio">
									<p id="radiotext" class="radio-inline">공개설정</p>
									<input type="radio" name="noticeOpen" value="Y" checked="checked"><label id="radiotext">전체공개</label>
									<input type="radio" name="noticeOpen" value="N"><label id="radiotext">회원공개</label>
								</div>
							</th>
						</tr>
				</table>
				<textarea id="textarea" name="noticeContent"></textarea>
				<script>
					CKEDITOR.replace('textarea', {
						height: "184px",
						border : "1px solid white",
						resize_enabled : false
					});
				</script>
				<div>
					<a type="button" id="cancelButton" href="noticeList">취소</a>
					<input type="submit" value="확인" id="okButton"/>
				</div>
			</form>
	</div>
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>