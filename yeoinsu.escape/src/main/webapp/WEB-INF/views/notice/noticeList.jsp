<%@page import="java.util.List"%>
<%@page import="yeoinsu.escape.notice.controller.NoticeController"%>
<%@page import="yeoinsu.escape.user.login.domain.User"%>
<%@page import="yeoinsu.escape.notice.domain.Notice"%> 
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %> 
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
	
	h1,h2,h3,h4,h5,h6, th,td,#p-text,#registerButton,#pageLink, a{
		color: white;
		font-family: 'Poor Story', cursive;
	}
	p{
		margin: 0px;
	}
	#notice{
		margin-bottom: 74px;
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
	#tableStyle{
		height: 301px;
	}
	#registerButton{
		padding: 14px 24px;
		font-size: 16px;
		border-radius: 12px;
		background-color: #222;
		border: 2px solid gray;
		text-align: center;
		float: right;
		text-decoration: none;
		/*visibility: hidden;*/
		margin-top:45px;
	}
	#pageLink{
		padding: 20px 100px;
		font-size: 18px;
		border-radius: 12px;
		background-color: #222;
		border: none;
		text-align: center;
		text-decoration: none;
		margin-top:60px;
	}
	#paging{
		font-size: 16px;
		margin-top:60px;
	}
	a, a:hover, a:link, a:visited, a:active{
		color: white;
	}

	@media (min-width: 0px) and (max-width: 1023px){
		#notice-list{
			height: 500px;
		}
		#notice{
			margin-bottom: 59px;
		}
		th, td{
			font-size: 12px;
		}
		#col12{
			width: 12%;
		}
		#col15{
			width: 15%;
		}
		#registerButton{
			padding: 11px 15px;
			font-size: 10px;
			margin-top: 0px;
		}
		#pageLink{
			font-size: 15px;
			margin-top: 10px;
		}
		.table{
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
<script>
window.addEventListener( "pageshow", function ( event ) {
	  var historyTraversal = event.persisted || 
	                         ( typeof window.performance != "undefined" && 
	                              window.performance.navigation.type === 2 );
	  if ( historyTraversal ) {
	    window.location.reload();
	  }
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
		<form name="formList">
		<div id="tableStyle">
			<table class="table">
				<colgroup>
					<col id="col12" width="8%">
					<col>
					<col id="col15" width="10%">
					<col id="col15" width="10%">
					<col id="col15" width="10%">
				</colgroup>
				<thead>
					<tr>
						<th>번호</th>
						<th style="text-align:left">제목</th>
						<th>작성자</th>
						<th>작성일</th>
						<th>조회수</th>
					</tr>
				</thead>
				<tbody>
					<c:if test="${!empty list}">
						<c:forEach var="row" items="${list}" varStatus="status">
							<tr>
								<td><p id="noticeNo">${status.count}</p></td>	
								<td style="text-align:left"><a id="details" href="${path}/notice/noticeDetails/${row.noticeNo}">${row.noticeTitle}</a></td>
								<td>${row.noticeWriter}</td>
								<td><fmt:formatDate value="${row.noticeDate}" pattern="MM-dd"/></td>
								<td>${row.noticeHits}</td>
							</tr>
						</c:forEach>
					</c:if>
				</tbody>
			</table>
		</div>
		<div>
		<%if(users!=null && users.getUserId().equals("admin")){ %>
			<a type="button" id="registerButton" href="noticeWrite">등록</a>
		<% } %>
		</div>
	</form>
	<!-- paging -->
	<div id="paging">
	<c:if test="${navi.totalPageCount !=1}">
		<c:if test="${navi.startPageGroup != 1}">
			&nbsp;<a href="noticeList?page=${navi.startPageGroup-1}">&lt;</a>
		</c:if>
		<c:forEach var="counter" begin="${navi.startPageGroup}" end="${navi.endPageGroup}">
			<c:choose>
			<c:when test="${counter == navi.currentPage}">	
				<a style="font-weight:bold" href="noticeList?page=${counter}">${counter}</a>
			</c:when>
			<c:otherwise>
				<a href="noticeList?page=${counter}">${counter}</a>
			</c:otherwise>
			</c:choose>
		</c:forEach>
		<c:if test="${navi.endPageGroup/3 == 1 && navi.totalPageCount != navi.endPageGroup}">
			<a href="noticeList?page=${navi.endPageGroup+1}">&gt;</a>&nbsp;
		</c:if>
	</c:if>
	</div>
	<!-- //paging -->
	</div>
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>