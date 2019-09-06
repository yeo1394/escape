<%@page import="yeoinsu.escape.thema.domain.Thema"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
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

<title>thema index</title>
</head>
<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	#index div{
		margin:auto;
		color:white;
	}
	#index{
		height: 80%;
		margin-top:2%;
		margin-bottom: 10%;
		
	}
	.row{
		height:90%;
		border:1px solid white;
	}
	.col-md-6{
		height: 95%;
		padding:0;
		font-family: 'Poor Story', cursive;
	}
	#title{
		height:20%;
		padding-top:5%;
		font-size:50px;
		width:93%
	}
	#number{
		height:5%;
		width:7%;
		padding:0%;
		border:1px solid white;
		text-align:center;
		font-size:x-large;
		background-color:gray;
	}
	#ex{
		border-top:1px solid white;
		height:40%;
	}
	#Dif{
		border-top:1px solid white;
	}
	#check{
		margin-top:2%;
	 	margin-left:30%;
		/*  */
		border: 4px inset gray;
		font-weight: bold;
		font-family: 'Poor Story', cursive;
		font-size: 11px;
		width:40%;
		height:auto;
		font-size:23px;
		/*  */
	}
	img{
		width:100%;
		height:100%;
	}
/* 	#logogo{
		width: 200px;
		height: 100px;
		border :  solid white 1px;
	} */
	li>a{
		margin-top: 15px;
	}
	div textarea{
		padding-right:0;
		padding-left:2px;
		border-style:none;
		width:100%;
		height:100%;
		text-align:left;
		font-size:20px;
	}
	#ex{
		height:60%;
	}
	#imgbox00{
		border-right:1px solid white;
	}
	@media (min-width: 0px) and (max-width: 1023px){
		#check{
			margin-left:30%;
			margin-top: 3%;
			width:auto;
			font-size:10px;
		}
		#ex{
			float:right;
			height:60%;
		}
		#timg{
			width:inherit*2;
			height:inherit;
		}
		#logogo{
			width:50px;
			height:25px;
		}
		#logoimg{
		margin-top:25%;
		margin-left:25%;
		width :120px;
		height: 50px;
		}
		#Dif{
			float:left;
		}
		#title{
		float:left;
		width:92.8%;
		font-size:22px;
		}
		#number{
		float:right;
		font-size: inherit;
		}
		div textarea{
			font-size:15px;
		}
	}
	
</style>
<script>

var str = document.getElementById("textarea").value;
str= str.replace(/(?:\r\n|\r|\n)/g,'<br />');
document.getElementById("result").value = str;

</script>
<header>
<%@include file ="../../../resource/include/header.jsp" %>
</header>

<body>
	<!-- 테마 -->
<c:forEach var="post" items="${Themalist}">
	<div class="container-fluid" id="index">
		<div id="${post.themaNo }" class="row">
			<div class="col-md-6" style="float: left; width: 50%; height:100%;">
				<img id="timg" alt="${post.themaImg}" src="<c:url value="/img/"/>${post.themaImg}" width="100%" height="100%">
			</div>
			<div class="col-md-6" style="float: right; width:50%; height:100%;">
				<div class="row">
					<div class="col-md-10" id="title" >${post.themaTitle}</div>
					<div class="col-md-2" id="number" >${post.themaNo}</div>
					<div class="col-md-12" id="Dif" style="height:20%;">
						<img src="<c:url value="/img/star0${post.themaLevel}.png"/>"/>
					</div>
					<div class="col-md-12" id="ex">
						<textarea style="background-color:#222;resize: none;"  disabled>${post.themaContent}</textarea>
					</div>
				</div>
				<a href ="../booking" class="btn btn-default" id="check">예약하기</a>
			</div>
		</div>
	</div>
</c:forEach>
	</body>
	
<%@include file ="../../../resource/include/footnav.jsp" %>

<footer>
<%@include file ="../../../resource/include/footer.jsp" %>
</footer>
</html>
