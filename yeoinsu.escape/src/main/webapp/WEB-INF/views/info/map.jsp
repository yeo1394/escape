<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<title>오시는길</title>
</head>
<style>
@import url("<c:url value="/css/basicStyle.css"/>");
@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');

body {	

	color: white;
	font-family: 'Poor Story', cursive; /* 기본  */
}

#title {
	color: white;
	text-align: center;
	font-size: 40px;
	margin-top: 20px;
	margin-bottom: 40px;
}

/* .col-md-7, .col-md-5 {
	 height:50%; 
	
} */

#maxInfo {
	padding:0;
	/* border: solid red 1px; */
	width: 50%;
	height: 40%;
	margin-bottom: 5%;
	text-align: center;
}

#triangle{
	border-style: solid solid none;                     
	border-top: 250px solid #222; 
    border-left: 0px solid transparent; 
    border-right: 290px solid transparent;
    position: absolute; 
    top: 16.3%; 
    left: 25%; 
    z-index: 9888;
}

#mapImg {
	position:absolute;
	/* border: solid gray 1px;  */
	width: auto;
	height:auto;
	padding: 0;
	opacity:0.8; 
	z-index: 9700;
}
#ma{
	width:auto; 
	height:auto;
}

#mapInfo {
	position:absolute;
	/* border: solid navy 1px; */
	width: auto;
	height:40%;
	color: black;
	z-index: 9999;
}
#mapInfo #lg{
	text-align: left;
	color: white;
	z-index: 9999;
	font-size: 24px;
}

#mapInfo #sm{
	/* margin-bottom: 40px; */
	text-align: left;
	z-index: 9999;
	color: white;
}

#bt1 {
	margin-left: 47%;
	border: 3px outset gray;
	width: auto;
	height: auto;
	background-color: #222;
	color: white;
	padding: 0.5%;
}

 
@media ( min-width :0px) and (max-width:1023px) {
	#maxInfo {
		width: auto;
		height: 40%;
	}
	#mapImg {
		width: 100%;
		height: 100%;
	}
	#ma{
		width:100%;
		height:100%;
	}
	#mapInfo #lg{
		font-size: medium;
	}
	#mapInfo #sm {
		width: 100%;
		height: 50%;
		text-align: left;
		font-size: xx-small;
	}
	#triangle{
		border-style: solid solid none;                     
		border-top: 250px solid #222; 
	    border-left: 0px solid transparent; 
	    border-right: 250px solid transparent; 
	    position: absolute; 
   		top: 18%; 
  		left: 0; 
   		z-index: 9888;
	}
}
 
@media ( min-width :1024px) and (max-width:1025px) {
	#maxInfo {
		width: auto;
		height: 40%;
	}
	#mapImg {
		width: 100%;
		height: 100%;
	}
	#ma{
		width:100%;
		height:100%;
	}
	#mapInfo #lg{
		font-size: medium;
	}
	#mapInfo #sm {
		width: 100%;
		height: 50%;
		text-align: left;
		font-size: xx-small;
	}
	#triangle{
		border-style: solid solid none;                     
		border-top: 250px solid #222; 
	    border-left: 0px solid transparent; 
	    border-right: 250px solid transparent; 
	    position: absolute; 
   		top: 10%; 
  		left: 0; 
   		z-index: 9888;
	}
}

@media ( min-width :320px) and (max-width:321px) {
	#maxInfo {
		width: auto;
		height: 40%;
	}
	#mapImg {
		width: 100%;
		height: 100%;
	}
	#ma{
		width:100%;
		height:100%;
	}
	#mapInfo #lg{
		font-size: medium;
	}
	#mapInfo #sm {
		width: 100%;
		height: 50%;
		text-align: left;
		font-size: xx-small;
	}
	#triangle{
		border-style: solid solid none;                     
		border-top: 200px solid #222; 
	    border-left: 0px solid transparent; 
	    border-right: 250px solid transparent; 
	    position: absolute; 
   		top: 20%; 
  		left: 0; 
   		z-index: 9888;
	}
}


</style>

<header>

	<nav class="navbar navbar-inverse">
		<div class="container-fluid">
			<div class="navbar-header">
				<a class="navbar-brand center-block" href="../main.html">로고</a>
				<button type="button" class="navbar-toggle" data-toggle="collapse"
					data-target="#myNavbar">
					<span class="icon-bar"></span> <span class="icon-bar"></span> <span
						class="icon-bar"></span>
				</button>
			</div>
			<div class="collapse navbar-collapse" id="myNavbar">
				<ul class="nav navbar-nav">
					<li><a href="01.html">&emsp;GUIDE</a></li>
					<li><a href="#">&emsp;BOOKING</a></li>
					<li><a href="#">&emsp;THEMA</a></li>
					<li><a href="#">&emsp;PARTY</a></li>
					<li><a href="#">&emsp;NOTICE</a></li>
					<li><a href="#">&emsp;Q&A</a></li>
				</ul>
			</div>
		</div>
	</nav>
</header>
<body>

	<div id="title">
		<h1>오시는 길</h1>
	</div>

	<div class="container-fluid" id="maxInfo">
	
		<div id="triangle"></div>

		<div class="col-md-5" id="mapInfo">
			<div>
				<p id="lg"><b>(주)60분 Escape Room</b></p>
				<p id="sm"><b>서울 영등포구 영중로 8길 6 6층<br>
				02-0000-0000<br>
				dlstn01@naver.com<br>
				13:00 ~ 22:00</b></p>
			</div>
		</div>
	
		<div class="col-md-7" id="mapImg">
			<div style="font: normal normal 400 12px/normal dotum, sans-serif;">
				<div>
					<a
						href="https://map.kakao.com/?urlX=479265.0&amp;urlY=1116366.0&amp;name=%EC%84%9C%EC%9A%B8%20%EC%98%81%EB%93%B1%ED%8F%AC%EA%B5%AC%20%EC%98%81%EC%A4%91%EB%A1%9C8%EA%B8%B8%206&amp;map_type=TYPE_MAP&amp;from=roughmap"
						target="_blank"> 
						<img class="map" id=ma
						src="//t1.daumcdn.net/roughmap/imgmap/1fb46cc78849dbe99724ad539a469e791ded21262a253b56aa32c9a85155d796">
					</a>
				</div>
			</div>
		</div>

		
	</div>

	<a href="../main.html" id="bt1" type="button">메인으로</a>
	<br>
	<br>
	<br>

</body>

<div class="container" id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="../user/01.html"><span
		class="glyphicon glyphicon-log-in"><br>로그인</span></a> <a id="b2"
		type="button" class="btn btn-default" href="../user/02.html"><span
		class="glyphicon glyphicon-user"><br>회원가입</span></a>
</div>


<footer>
	<div class="container-fluid">
		<div id="footarea">
			<a href="02.html">오시는길</a>&nbsp;|&nbsp;<a href="01.html">게임방법</a><br>
			<br>

			<p>
				<b>대표이사&nbsp;</b> 여인수&emsp;|&emsp;<b>대표전화&nbsp;</b> 010-0000-0000
			</p>
			<p>
				<b>사업자등록번호 &nbsp;</b> 000-00-00000&emsp;|&emsp;<b>본사&nbsp;</b>(주)인천광역시
				계양구 효성동
			</p>
			<p>
				<b>주소&nbsp;</b>서울특별시 영등포구 영중로8길 6 6층
			</p>

			<p>
				<b>고객센터&nbsp;</b> 02-0000-0000
			</p>

			<br>

			<p id="copy">COPYRIGHT 2019. INSOO ENTERTAINMENT</p>

		</div>
		<br> <br>

	</div>
</footer>
</html>