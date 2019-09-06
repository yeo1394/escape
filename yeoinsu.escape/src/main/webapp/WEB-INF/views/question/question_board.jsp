<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@ page import="yeoinsu.escape.user.login.domain.User"%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<title>escape</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');	
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
	
	@media (min-width:0px) and (max-width:1023px){
		.qnatab{
			font-size:10px;
		}
	}
	#qna1{
		text-align: center;
		font-size: 280%;
		color: white;
		margin-bottom: 0px;
		margin-top: 0px;
		font-family: 'Poor Story', cursive;
	}
	#qna2{
		text-align: center;
		font-size: 180%;
		color: white;
		margin-bottom: 0px;
		margin-top: 0px;
		font-family: 'Poor Story', cursive;
	}
	#qnath{
		color: white;
		text-align: center;
		font-size: 120%;
		line-height: 2;
		border-top: 1px solid #ddd;
		border-bottom: 1px solid #ddd;
		font-family: 'Poor Story', cursive;
	}
	#qnatd{
		color: white;
		font-size: 100%;
		text-align: center;
		line-height: 2;
		border-top: 1px solid #ddd;
		border-bottom: 1px solid #ddd;
		font-family: 'Poor Story', cursive;
	}
	#qnatd1{
		color: white;
		font-size: 100%;
		line-height: 2;
		border-top: 1px solid #ddd;
		border-bottom: 1px solid #ddd;
		font-family: 'Poor Story', cursive;
	}
	#qnabt{
		text-align: center;
		font-size: 120%;
		margin-left: 1%;
	}
	#qnabt1{
		font-size: 120%;
		margin-left: 1%;
	}
	#qnabt-write{
		float: right;
		font-size: 120%;
		margin-left: 1%;
		margin-right: 1%;
		color: black;
		border: 4px outset gray;
		height:auto;
		text-align: center;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
	}
	#btnWriteForm{
		float: right;
		font-size: 120%;
		margin-left: 1%;
		margin-right: 1%;
		color: black;
		border: 4px outset gray;
		height:auto;
		text-align: center;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
	}
	.pagination{
		background-color: transparent;
		display: block;
		text-align: center;
	}
	.pagination > li > a {
		float: none;
		margin-left:-4px;
		background-color:#222222;
		color: #ffffff;
		border-color:#222222;
	}
	.pagination>.active>a, 
	.pagination>.active>a:focus, 
	.pagination>.active>a:hover, 
	.pagination>.active>span, 
	.pagination>.active>span:focus, 
	.pagination>.active>span:hover {
    z-index: 0;
    color: #000;
    cursor: default;
    background-color: #fff;
    border-color:#222222;
    
	}
	a{
		color:white;
	}
</style>
<script>
var init = function () {
	$(document).on("click","#pageB a",function(){
		$("#questionlist").empty();
		var id= $(this).attr('id');
		$.ajax({
			url:"page/list",
			data: {pageCnt :id},
			 async: false,
			success: function(questions){
				if(questions.length>0){
					var questionList =[];
					$(questions).each(function(idx,question){
						questionList.push(
							'<tr>'+
								'<td style="text-align: center">'+question.queNo+'</td>'+
								'<td colspan="5"><a id="tdId" data-value='+question.queNo+'" href="question/in?pageCnt='+question.queNo+'">'+question.queTitle+'</a></td>'+
								'<td style="text-align: center">'+question.queWriter+'</td>'+
								'<td style="text-align: center">'+question.queDate+'</td>'+
								'<td style="text-align: center"><span class="badge">'+question.queHits+'</span></td>'+
							'<tr>'
						);
					});
					$('#questionlist').append(questionList.join(''));
				}else {
					tellMsg('사용자가 없습니다.');
				}					
			},
			error:function(a,b,errMsg) {
				alert(errMsg,"error");
			}
		});
		
		$.ajax({
			url:"page/paging",
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
						a+='<li><a name="pageCnt" id="'+start+'">&laquo;</a></li>'
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
						a+='<li><a id="'+end+'">&raquo;</a></li>'
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
<%if(session.getAttribute("nowUser") == null){ %>
	<c:redirect url="/login"/>
<%} %>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
	<div>
	<p id="qna1">질문/답변</p>
	<p id="qna2">Q&A</p>
	<br><br>
	</div>
	<div class="qnatab">
	<table class="table table-dark" style="color: white;">
		<thead>
			<tr>
				<th id="qnath">번호</th>
				<th id="qnath" colspan="5">제목</th>
				<th id="qnath">작성자</th>
				<th id="qnath">작성일</th>
				<th id="qnath">조회수</th>
			</tr>
		</thead>
		<tbody id="questionlist">
			<c:forEach var="list" items="${requestScope.posts}">
				<tr>
					<td id="qnatd">${list.queNo}</td>
					<td id="qnatd1" colspan="5"><a id="tdId" data-value=${list.queNo} href="question/in?pageCnt=${list.queNo}")">
					${list.queTitle} </a><span class="glyphicon glyphicon-lock"></span></td>
					<td id="qnatd">${list.queWriter}</td>
					<td id="qnatd"><fmt:formatDate pattern="MM-dd" value="${list.queDate}"/></td>
					<td id="qnatd"><span class="badge">${list.queHits}</span></td>
				</tr>
			</c:forEach>
		</tbody>
	</table><!-- table 끝 -->
	<a type="button" class="btn btn-default" id="btnWriteForm" href="question/add?pageCnt=${requestScope.qneNo}">글쓰기</a><br>

		<div id="pageB" class="text-center">
			<ul class="pagination">
				<c:if test="${pageMaker.prev}">
					<li><a id="${pageMaker.startPage-1}">&laquo;</a></li>
				</c:if>
				
				<c:forEach begin="${pageMaker.startPage}" end="${pageMaker.endPage}" var="idx">
					<li <c:out value="${pageMaker.page.currentPage==idx ? 'class=active' :''}"/>>
					<a class="btn" name="pageCnt" id="${idx}" value="${idx}">${idx}</a>
				</c:forEach>
				<c:if test="${pageMaker.next}">
					<li><a id="${pageMaker.endPage+1}">&raquo;</a></li>
				</c:if>
			</ul>
		</div>
	</div>
</body>
<br><br>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>