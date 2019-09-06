<%@page import="yeoinsu.escape.party.service.ParPageServiceImpl"%>
<%@page import="yeoinsu.escape.party.domain.ParPage"%>
<%@page import="java.lang.Math" %>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	ParPageServiceImpl pageService = (ParPageServiceImpl)request.getAttribute("pageMaker");
	double pageEnd = Math.ceil((double)pageService.getTotRowCnt()/10);
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
<title>escape</title>
<script>
var init = function () {
	$(document).on("click","#pageB a",function(){
		$("#partyList").empty();
		var id= $(this).attr('id');
		$.ajax({
			url:"parPage/list",
			data: {pageCnt :id},
			 async: false,
			success: function(partys){
				if(partys.length>0){
					var partyList =[];
					$(partys).each(function(idx,party){
						partyList.push(	
							'<tr>'+
								'<td>'+party.partyNo+'</td>'+
								'<td colspan="5"><a id="tdId" data-value='+party.partyNo+'" href="party/in?pageCnt='+party.partyNo+'">'+party.partyTitle+'</a></td>'+
								'<td>'+party.partyWriter+'</td>'+
								'<td>'+party.partyDate+'</td>'+
								'<td><span class="badge">'+party.partyHits+'</span></td>'+
							'</tr>'
						);
					});
					$('#partyList').append(partyList.join(''));
				}else {
					tellMsg('사용자가 없습니다.');
				}					
			},
			error:function(a,b,errMsg) {
				alert(errMsg,"error");
			}
		});
		
		$.ajax({
			url:"parPage/paging",
			data: {pageCnt :id},
			 async: false,
			success: function(page){
				var i = 0;
				console.log(page.totRowCnt);
				 $("#pageB").empty();
					if(page != null){
					var start = Number(page.startPage)-1
					var end = Number(page.endPage)+1
					var a = '<ul class="pagination">'
					if(page.prev==true){
						a+='<li><a name="pageCnt" class="btn" id="'+start+'">&laquo;</a></li>'
					}
					
						
					for(i =page.startPage;i <=page.endPage;i++){
						if(i > Math.ceil(page.totRowCnt/10)) {
							break;
						}
						if(page.page.currentPage == i){
							a+='<li class="active">'
						}else {
							a+='<li>'
						}
						a+='<a class="btn" name="pageCnt" id="'+i+'" value="'+i+'">'+i+'</a>'
						a+='</li>'
					}
					if(page.next==true){
						a+='<li><a class="btn" id="'+end+'">&raquo;</a></li>'
					}
					a+='</ul>' 
					$('#pageB').html(a);
				}else {
				} 					
			},
			error:function(a,b,errMsg) {
				alert(errMsg,"error");
			}
		});
	});
};
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

h1 {
	color: white;
	text-align: center;
	font-size: 40px;
	margin-top: 30px;
	margin-bottom: 20px;
}

table {
	width: 100%;
}

.table>tbody>tr>td {
	border-top: 2px solid #555;
}

thead {
	background-color: rgb(32, 32, 32);
	color: white;
}

thead th {
	text-align: center;
	width:15%;
}

th[colspan] {
	width: 35%;
}

tbody {
	text-align: center;
	background-color: rgb(57, 57, 57);
	color: white;
}

#addGroup {
	margin-bottom: 20px;
}

#addGroup > a {
	float:right;
	background-color:rgb(72,72,72);
	color:white;
	border:none;
}
a {
	color: white;
}

a:hover {
	color: white;
}

.pagination>li>a, .pagination>li>span {
    color: white;
    background-color: rgb(80,80,80);
    border: 1px solid black;
}
.pagination>.active>a, .pagination>.active>a:focus, .pagination>.active>a:hover, .pagination>.active>span, .pagination>.active>span:focus, .pagination>.active>span:hover {
    background-color: rgb(50,50,50);
    border-color: black;
}
</style>
<%if(session.getAttribute("nowUser") == null){ %>
	<c:redirect url="/login"/>
<%} %>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
	<div class="container-fluid">
		<h1>파티모집 게시판</h1>

		<table class="table">
			<thead>
				<tr>
					<th>번호</th>
					<th colspan="5">제목</th>
					<th>작성자</th>
					<th>작성일</th>
					<th>조회수</th>
				</tr>
			</thead>
			<tbody id="partyList">
				<c:forEach var="post" items="${requestScope.posts}">
					<tr>
						<td>${post.partyNo}</td>
						<td colspan="5"><a id="tdId" data-value=${post.partyNo} href="party/in?pageCnt=${post.partyNo}">${post.partyTitle}</a></td>
						<td>${post.partyWriter}</td>
						<td>${post.partyDate}</td>
						<td><span class="badge">${post.partyHits}</span></td>
					</tr>
				</c:forEach>
			</tbody>	
		</table>
	
		<div id="pageB" class="text-center">
			<ul class="pagination">
				<c:set var="pageEnd" value="<%=pageEnd %>"/>
				<c:if test="${pageMaker.prev}">
					<li><a class="btn" id="${pageMaker.startPage-1}">&laquo;</a></li>
				</c:if>
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
				<c:if test="${idx <= pageEnd}">
					<li <c:out value="${pageMaker.page.currentPage==idx ? 'class=active' :''}"/>>
					<a class="btn" name="pageCnt" id="${idx}" value="${idx}">${idx}</a>
				</c:if>	
				</c:forEach>
				<c:if test="${pageMaker.next}">
					<li><a class="btn" id="${pageMaker.endPage+1}">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
	<div id="addGroup">
		<a href="party/add" class="btn btn-default">글쓰기</a>
	</div>		
	</div>
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>