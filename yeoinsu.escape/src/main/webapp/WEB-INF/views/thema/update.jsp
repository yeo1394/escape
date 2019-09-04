<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=utf-8" 
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="yeoinsu.escape.thema.service.ThemaServiceImpl"  %>
<%@ page import="yeoinsu.escape.thema.service.ThemaService"  %>
<%@ page import="yeoinsu.escape.thema.dao.ThemaDaoImpl"  %>
<%@ page import="yeoinsu.escape.thema.dao.ThemaDao"  %>
<%@ page import="yeoinsu.escape.thema.domain.Thema"  %>



<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script>
<%	
	List<Thema> thema = (List<Thema>)session.getAttribute("Themalist");
	
	Thema thema1 = thema.get(0); 
	Thema thema2 = thema.get(1);
	Thema thema3 = thema.get(2);
	Thema thema4 = thema.get(3);
	Thema thema5 = thema.get(4);
	Thema thema6 = thema.get(5); 
%>

var imgView1 = function(input){
	$("#eximg").attr("src","");
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.addEventListener("load",function(){
			$('.previewImg1').attr('src',reader.result);
		},false);
		reader.readAsDataURL(input.files[0]);
	}
}

var imgView2 = function(input){
	$("#eximg").attr("src","");
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.addEventListener("load",function(){
			$('.previewImg2').attr('src',reader.result);
		},false);
		reader.readAsDataURL(input.files[0]);
	}
}

var imgView3 = function(input){
	$("#eximg").attr("src","");
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.addEventListener("load",function(){
			$('.previewImg3').attr('src',reader.result);
		},false);
		reader.readAsDataURL(input.files[0]);
	}
}

var imgView4 = function(input){
	$("#eximg").attr("src","");
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.addEventListener("load",function(){
			$('.previewImg4').attr('src',reader.result);
		},false);
		reader.readAsDataURL(input.files[0]);
	}
}

var imgView5 = function(input){
	$("#eximg").attr("src","");
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.addEventListener("load",function(){
			$('.previewImg5').attr('src',reader.result);
		},false);
		reader.readAsDataURL(input.files[0]);
	}
}

var imgView6 = function(input){
	$("#eximg").attr("src","");
	if(input.files && input.files[0]){
		var reader = new FileReader();
		reader.addEventListener("load",function(){
			$('.previewImg6').attr('src',reader.result);
		},false);
		reader.readAsDataURL(input.files[0]);
	}
}


var str = document.getElementById("textarea").value;
	str = str.replace(/(?:\r\n|\r|\n)/g, '<br />');
	document.getElementById("result").value = str;



</script>

<title>update</title>
</head>



<style>
	@import url("<c:url value="/css/basicStyle.css"/>");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');



	#upt{
		text-align: center;
	}
	
	#title{
		color: white;
		text-align: center;
		font-size: 40px;
		margin-top: 20px;
		margin-bottom: 40px;
		font-family: 'Poor Story', cursive;	/* 기본  */	
	}
	
	#themaMax{
		font-family: 'Poor Story', cursive;
		border: 4px outset gray;
		width: 80%;
		/* height: 70%; */
		height:600px;
		margin: auto;
		margin-bottom: 5%; 
	}
	
	#themaBox{
		/* border:1px solid yellow; */
		width:50%;
		height:100%;
		float: left;
		color: white;
	}
	
	#themaPlace{
		/* border:1px solid purple; */
		width:50%;
		height:100%;
		float:right;
	}

	
	#themaImg{
		/* border:1px solid navy; */
		width:90%;
		height:90%;
		position: static;
		margin-bottom: auto;
		margin-left:auto;
		margin-right:auto;
		margin-top: 3%;	
		background-color:rgb(65,65,65);
		border:2px inset white;
	}

	#upload{
		/* border: 1px solid green; */
		margin:auto;
		margin-top: 2%;
		height: auto;
		width: 90%;
		background-color:rgb(65,65,65);
		color: gray;
		border:2px inset white;
		font-weight: bold;
	}
	
	#themaNo, #themaTitle, #themaLevel, #them{
		width:90%;
		height:auto;
		margin-top: 3%;
		background-color:rgb(65,65,65);
		color: white;
	}

	#themaContent{
		width:90%;
		height:400px;
		margin: auto;
		margin-top: 3%;
		background-color:rgb(65,65,65);
		border:2px inset white;
		color: white;
		font-size: large;
	}
	


	#update, #secede{
		border: 3px outset gray;
		margin:auto;
		margin-top:0%;
		width:12%;
		margin-left: 5%;
		margin-right: 5%;
		background-color : #DDDDDD;
		color: black;
		font-weight: bold;
	}	 
	
	.noresize {
  		resize: none;
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

@media ( min-width :0px) and (max-width:1023px) {
	#themaMax{
		width: 100%;
		height: 50%;
	}

	#eximg{
		width: 100%;
		height: 100%;
	}
	
	#update, #secede{
		width: 50px;
		height: 28px;
		font-size: x-small;
	}
	#themaContent{
		font-size: x-small;
		height: 150px;
	}
}

</style>


<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>
<div id=upt>
	<div id="title">
		<h1>테마관리</h1>
	</div> 
	<!-- 테마1시작 -->
	
	<div id="themaMax">
		
		<form method="post">
		
		<div id="themaBox">
			<div id="themaI">
				<input type="text" id="them" value="<%= thema.get(0).getThemaImg() %>">
				<img id="eximg" src="<c:url value="/img/"/><%=thema.get(0).getThemaImg()%>" class="previewImg1" width="406" height="494">
			</div>
			<input id="upload" type="file" name="themaImg"  onchange="imgView1(this)">
		</div>
		
		<div id="themaPlace">
			<input type="text" id="themaNo" name='themaNo' value="<%= thema.get(0).getThemaNo() %>" placeholder="테마번호" readonly="readonly"><br>
			<input type="text" id="themaTitle" name="themaTitle" value="<%= thema.get(0).getThemaTitle() %>" placeholder="타이틀1" ><br>
			<input type="text" id="themaLevel"  name="themaLevel" value="<%= thema.get(0).getThemaLevel() %>"  maxlength="1"  onkeyup="this.value=this.value.replace(/[^1-5]/g,'');" placeholder="난이도(1~5까지 입력)"><br>
			<textarea		   id="themaContent" name="themaContent" class="noresize"  placeholder="테마 내용"><%= thema.get(0).getThemaContent() %></textarea><br>
			<button id="update" type="submit" formaction="modify" >수정</button>	
			<button id="secede" type="submit" formaction="secede">초기화</button>				
		</div>
		
		</form>
		
	</div>
	
	<!-- 테마1끝 -->	
		<br>
	<!-- 테마2시작 -->	
	<div id="themaMax">
		
		<form method="post">
		
		<div id="themaBox">
			<div id="themaI">
				<input type="text" id="them" value="<%= thema.get(1).getThemaImg() %>">
				<img id="eximg" src="<c:url value="/img/"/><%=thema.get(1).getThemaImg()%>" class="previewImg2" width="406" height="494">
			</div>
			<input id="upload" type="file" name="themaImg"  onchange="imgView2(this)" >
		</div>
		
		<div id="themaPlace">
			<input type="text" id="themaNo" name='themaNo' value="<%= thema.get(1).getThemaNo() %>" placeholder="테마번호" readonly="readonly"><br>
			<input type="text" id="themaTitle" name="themaTitle" value="<%= thema.get(1).getThemaTitle() %>" placeholder="타이틀1" ><br>
			<input type="text" id="themaLevel"  name="themaLevel" value="<%= thema.get(1).getThemaLevel() %>"  maxlength="1"  onkeyup="this.value=this.value.replace(/[^1-5]/g,'');" placeholder="난이도(1~5까지 입력)"><br>
			<textarea		   id="themaContent" name="themaContent" class="noresize"  placeholder="테마 내용"><%= thema.get(1).getThemaContent() %></textarea><br>
			<button id="update" type="submit" formaction="modify">수정</button>	
			<button id="secede" type="submit" formaction="secede">초기화</button>				
		</div>
		
		</form>
	
	</div>

	<!-- 테마2끝 -->	
		<br>
	<!-- 테마3시작 -->	
	<div id="themaMax">
		<form method="post">
		
		<div id="themaBox">
			<div id="themaI">
				<input type="text" id="them" value="<%= thema.get(2).getThemaImg() %>">
				<img id="eximg" src="<c:url value="/img/"/><%=thema.get(2).getThemaImg()%>" class="previewImg3" width="406" height="494">
			</div>
			<input id="upload" type="file" name="themaImg"  onchange="imgView3(this)" >
		</div>
		
		<div id="themaPlace">
			<input type="text" id="themaNo" name='themaNo' value="<%= thema.get(2).getThemaNo() %>" placeholder="테마번호" readonly="readonly"><br>
			<input type="text" id="themaTitle" name="themaTitle" value="<%= thema.get(2).getThemaTitle() %>" placeholder="타이틀1" ><br>
			<input type="text" id="themaLevel"  name="themaLevel" value="<%= thema.get(2).getThemaLevel() %>"  maxlength="1"  onkeyup="this.value=this.value.replace(/[^1-5]/g,'');" placeholder="난이도(1~5까지 입력)"><br>
			<textarea		   id="themaContent" name="themaContent" class="noresize"  placeholder="테마 내용"><%= thema.get(2).getThemaContent() %></textarea><br>
			<button id="update" type="submit" formaction="modify">수정</button>	
			<button id="secede" type="submit" formaction="secede">초기화</button>			
		</div>
		
		</form>
	</div>
	<!-- 테마3끝 -->	
		<br>
	<!-- 테마4시작 -->
	<div id="themaMax">
		<form method="post">
		
		<div id="themaBox">
			<div id="themaI">
				<input type="text" id="them" value="<%= thema.get(3).getThemaImg() %>">
				<img id="eximg" src="<c:url value="/img/"/><%=thema.get(3).getThemaImg()%>" class="previewImg4" width="406" height="494">
			</div>
			<input id="upload" type="file" name="themaImg"  onchange="imgView4(this)" >
		</div>
		
		<div id="themaPlace">
			<input type="text" id="themaNo" name='themaNo' value="<%= thema.get(3).getThemaNo() %>" placeholder="테마번호" readonly="readonly"><br>
			<input type="text" id="themaTitle" name="themaTitle" value="<%= thema.get(3).getThemaTitle() %>" placeholder="타이틀1" ><br>
			<input type="text" id="themaLevel"  name="themaLevel" value="<%= thema.get(3).getThemaLevel() %>"  maxlength="1"  onkeyup="this.value=this.value.replace(/[^1-5]/g,'');" placeholder="난이도(1~5까지 입력)"><br>
			<textarea		   id="themaContent" name="themaContent" class="noresize"  placeholder="테마 내용"><%= thema.get(3).getThemaContent() %></textarea><br>
			<button id="update" type="submit" formaction="modify">수정</button>	
			<button id="secede" type="submit" formaction="secede">초기화</button>			
		</div>
		
		</form>
	</div>	
	<!-- 테마4끝 -->	
		<br>
	<!-- 테마5시작 -->	
	<div id="themaMax">
		<form method="post">
		
		<div id="themaBox">
			<div id="themaI">
				<input type="text" id="them" value="<%= thema.get(4).getThemaImg() %>">
				<img id="eximg" src="<c:url value="/img/"/><%=thema.get(4).getThemaImg()%>" class="previewImg5" width="406" height="494">
			</div>
			<input id="upload" type="file" name="themaImg"  onchange="imgView5(this)" >
		</div>
		
		<div id="themaPlace">
			<input type="text" id="themaNo" name='themaNo' value="<%= thema.get(4).getThemaNo() %>" placeholder="테마번호" readonly="readonly"><br>
			<input type="text" id="themaTitle" name="themaTitle" value="<%= thema.get(4).getThemaTitle() %>" placeholder="타이틀5" ><br>
			<input type="text" id="themaLevel"  name="themaLevel" value="<%= thema.get(4).getThemaLevel() %>"  maxlength="1"  onkeyup="this.value=this.value.replace(/[^1-5]/g,'');" placeholder="난이도(1~5까지 입력)"><br>
			<textarea		   id="themaContent" name="themaContent" class="noresize"  placeholder="테마 내용"><%= thema.get(4).getThemaContent() %></textarea><br>
			<button id="update" type="submit" formaction="modify">수정</button>	
			<button id="secede" type="submit" formaction="secede">초기화</button>			
		</div>
		
		</form>
	</div>	
	<!-- 테마5끝 -->			
		<br>
	<!-- 테마6시작 -->	
	<div id="themaMax">
		<form method="post">
		
		<div id="themaBox">
			<div id="themaI">
				<input type="text" id="them" value="<%= thema.get(5).getThemaImg() %>">
				<img id="eximg" src="<c:url value="/img/"/><%=thema.get(5).getThemaImg()%>" class="previewImg6" width="406" height="494">
			</div>
			<input id="upload" type="file" name="themaImg"  onchange="imgView6(this)" >
		</div>
		
		<div id="themaPlace">
			<input type="text" id="themaNo" name='themaNo' value="<%= thema.get(5).getThemaNo() %>" placeholder="테마번호" readonly="readonly"><br>
			<input type="text" id="themaTitle" name="themaTitle" value="<%= thema.get(5).getThemaTitle() %>" placeholder="타이틀1" ><br>
			<input type="text" id="themaLevel"  name="themaLevel" value="<%= thema.get(5).getThemaLevel() %>"  maxlength="1"  onkeyup="this.value=this.value.replace(/[^1-5]/g,'');" placeholder="난이도(1~5까지 입력)"><br>
			<textarea		   id="themaContent" name="themaContent" class="noresize"  placeholder="테마 내용"><%= thema.get(5).getThemaContent() %></textarea><br>
			<button id="update" type="submit" formaction="modify">수정</button>	
			<button id="secede" type="submit" formaction="secede">초기화</button>			
		</div>
		
		</form>
	</div>
</div>		
	<!-- 테마6끝 -->	
</body>
<%@include file ="../../resource/include/footnav.jsp" %>
<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>