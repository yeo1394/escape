<%@page import="yeoinsu.escape.user.login.domain.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.List" %>
<%@ page import="yeoinsu.escape.thema.domain.Thema"%>
<%@ page import="yeoinsu.escape.schedule.domain.Schedule"%>
<%
Schedule scheno = (Schedule)session.getAttribute("scheNo");
Thema thema = (Thema)session.getAttribute("theTitle");
User users = (User)session.getAttribute("nowUser");

String userName = "";
String userTel = "";
String userMail = "";
int userPoint = 0;

if (users != null)
{
	userName = users.getUserName();
	userTel = users.getUserTel();
	userMail = users.getUserMail();
	userPoint = users.getUserPoint();
}

%>
<!DOCTYPE html>
<html lang="ko">
<head>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.css" />
<script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/1.1.3/sweetalert.min.js"></script>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="http://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/js/bootstrap.min.js"></script>
<title>escape</title>
</head>
<style>
	@import url("/escape/css/basicStyle.css");
	@import url('https://fonts.googleapis.com/css?family=Metal+Mania&display=swap');
	@import url('https://fonts.googleapis.com/css?family=Poor+Story&display=swap');
#font{
	font-family: 'Poor Story', cursive;
	font-size: large;
}

#box {
	width: 100%;
	height: auto;
	margin-top: 2%;
	margin-bottom: 2%;
	text-align: center;
	color: white;
}

#haha {
	/* border: 3px solid orange; */
	width: 100%;
	height: 100%;
}

#hana {
	/* border: 3px solid red; */
	width: 100%;
	height: 100%;
	
}

#hanabtn {
	border: 3px outset gray;
	height:34px;
	font-weight: bold;
	margin: 2%;
}



#text {
	color: white;
}

#name, #tel, #email {
	width: 50%;
}

#mileage {
	width: 100px;
	color: black;
	float: left;
}

#radio {
	margin-left: 10%;
}

#panel {
	background-color: #222;
	width: 75%;
}

#ta {
	color: white;
	width: 80%;
	height: 100px;
	margin-left: 10%;
	background-color: #222;
}

#cardnum{
	color: black;
}

hr {
	color: white; /*IE*/
	border-color: gray; /*사파리*/
	background-color: gray; /*크롬,모질라 등 기타브라우저*/
	height: 0.3%;
}

table, tr {
	color: white;
	border: solid #222;
	height: 10%;
}

th {
	width: 30%;
	font-weight: bold;
}

.noresize {
	resize: none;
}

.dropdown-menu {
	text-align: center;
	min-width: 8%;
}

.justified {
	justify-content: center;
}

#btn{
	border: 3px outset gray;
	height:34px;
	font-weight: bold;
}

input[type="number"]::-webkit-outer-spin-button,
input[type="number"]::-webkit-inner-spin-button {
    -webkit-appearance: none;
    margin: 0;
}

@media ( min-width :0px) and (max-width:1023px) {
	.text {
		font-size: 15px;
	}
}

#people{
	color: black;
	width: auto;
	height: 30px;
}

</style>
<script>
//적용버튼 
var init = function(){
	
	$(document).on("click","#btn",function() {
		var price = $("#price").html().replace("원","");
		var mileage = $("#mileage").val();
		var totalamt = 0;
		totalamt = price - mileage;
		$("#price").html(totalamt + "원");
		$("input[name=BookPrice]").val(totalamt);
		$("#mileage").val(0);
		
	});
	
}
$(init);
</script>
<header>
<%@include file ="../../resource/include/header.jsp" %>
</header>
<body>

	<!-- 정보입력 -->

	<div id="font">
		<div id="box" style="font-size:xx-large;">
			<p>정보입력</p>
		</div>
		<hr>
		<div class="container">
			<form  action="bookingInsert" method="post">
			<div id="haha">
				<table class="table Basic Table">
					<tbody>
						<tr>
							<th><p class="text" align="center">Time.</p></th>
							<td><p id="time" class="text"><%=scheno.getScheTime() %></p>
								<input name="time" type="hidden" value="<%=scheno.getScheTime() %>"/>
							</td>
						</tr>
						<tr>
							<th><p class="text" align="center">Room.</p></th>
							<td><p id="title" class="text"><%=scheno.getScheTitle() %></p>
								<input name="ScheNo" type="hidden" value="<%=scheno.getScheNo() %>"/>
							</td>
						</tr>
						<tr>
							<th><p class="text" align="center">예약자.</p></th>
							<td><input class="form-control" name="BookName" id="name"
								value="<%=userName %>" type="text" maxlength="4" autocomplete="off" required/></td>
						</tr>
						<tr>
							<th><p class="text" align="center">연락처.</p></th>
							<td><input class="form-control" name="BookTel" id="tel"
								value="<%=userTel %>" type="text"  maxlength="11" pattern=".{11,11}" onkeyup="this.value=this.value.replace(/[^0-9]/g,'');" autocomplete="off" required/></td>
						</tr>
						<tr>
							<th><p class="text" align="center">E-Mall.</p></th>
							<td><input  type="email" class="form-control" id="email" name="BookMail"
								value="<%=userMail %>" /></td>
						</tr>
						<tr>
							<th><p class="text" align="center">가격.</p></th>
							<td><p id="price" class="text"><%=thema.getThemaPrice() %>원</p>
								<input name="BookPrice" type="hidden" value="<%=thema.getThemaPrice() %>"/>
							</td>
						</tr>
						<tr>
							<th><p class="text" align="center">보유 마일리지.</p></th>
							<td><input name="mileage" type="number" class="form-control" id="mileage"
							 style="margin-right: 1%;" value="<%=userPoint %>" readonly="readonly" /> 
							<p class="text">원
							&emsp;<button id="btn" type="button" class="btn btn-default">적용</button>
							</td>
							
						
						</tr>
						<tr>
							<th><p class="text" align="center">인원수.</p></th>
							<td>
								<select class="form-control" id="people" name="BookCnt">
									<option>2명</option>
									<option>3명</option>
									<option>4명</option>
								</select>
							</td>
						</tr>
						<tr>
							<th><p class="text" align="center">예약방식.</p></th>
							<td>
								<form class="bs-example" action="">
									<div class="panel-group" id="accordion">
										<div class="panel" id="panel">
											<div class="panel-heading">
												<h4 class="panel-title">
													<label for='r11'> <input type='radio' id='r11'
														name='occupation' value='Working' required /> 카드결제 <a
														data-toggle="collapse" data-parent="#accordion"
														href="#collapseOne"></a>
													</label>
												</h4>
											</div>
											<div id="collapseOne" class="panel-collapse collapse">
												<div class="panel-body">
													<p class="text">카드&nbsp;번호&nbsp;
													</p>
													<input id="cardnum" type="number" style="width: 22%;"/>-
													<input id="cardnum" type="number" style="width: 22%;"/>-
													<input id="cardnum" type="number" style="width: 22%;"/>				
													<br>
													<br>
													<p class="text">CVC&nbsp;번호&nbsp;						
													<input id="cardnum" type="number" style="width: 25%;"/>				
													</p>
													<br>
													<p class="text">비밀&nbsp;번호&nbsp;						
													<input id="cardnum" type="password" style="width: 25%;"/>				
													</p>
													
												</div>
											</div>
										</div>
										<div class="panel" id="panel">
											<div class="panel-heading">
												<h4 class=panel-title>
													<label for='r12'> <input type='radio' id='r12'
														name='occupation' value='Not-Working' required /> 무통장입금 <a
														data-toggle="collapse" data-parent="#accordion"
														href="#collapseTwo"></a>
													</label>
												</h4>
											</div>
											<div id="collapseTwo" class="panel-collapse collapse">
												<div class="panel-body">
													<p class="text">110-324-989542</p>
													<p class="text">신한은행 예금주 : 이대운</p>													
													<br>
													<p class="text">▶&nbsp;포인트 사용시 카드결제 부탁 드립니다.</p>
													<br>
													<p class="text">▶&nbsp;예약자명과 입금자명을 일치시켜 주세요.</p>							
												</div>
											</div>
										</div>
									</div>
								</form>

							</td>
						</tr>
						<tr>
							<th><p class="text" align="center">고객전달사항.</p></th>
						</tr>
						<tr>
							<th colspan="2">
								<div class="justified">
									<textarea id="ta" class="noresize"></textarea>
								</div>
							</th>
						</tr>
						<tr>
							<th><p class="text" align="center">유의사항.</p></th>
						</tr>
						<tr>
							<th colspan="2">
								<div class="justified">
									<textarea id="ta" class="noresize" readonly="readonly">
-예약하고 방문 시 최소 10분전에 방문해주세요.
-이용방법 및 주의사항에 대해 설명 드리고 예약시간 정시에 시작합니다.
-늦으실 경우 이용시간에 불이익이 있을 수 있습니다.
-예약시간 2시간 전까지 연락이 안되면 예약은 자동 취소될 수 있습니다.
									</textarea>
								</div>
							</th>
						</tr>
					</tbody>
				</table>
			</div>
			<div id="hana" align="center">
				<button id="hanabtn" class="btn btn-default" type="submit" >예약하기</button>
				<a id="hanabtn" class="btn btn-default" href="../booking" >취소하기</a>
			</div>
			</form>
		</div>
	</div>
	<!-- 정보입력 -->

</body>

<%@include file ="../../resource/include/footnav.jsp" %>

<footer>
<%@include file ="../../resource/include/footer.jsp" %>
</footer>
</html>

<script type="text/javascript">
	$('#r11').on('click', function() {
		$(this).parent().find('a').trigger('click')
	})

	$('#r12').on('click', function() {
		$(this).parent().find('a').trigger('click')
	})
</script>