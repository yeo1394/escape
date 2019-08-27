<%@page import="yeoinsu.escape.user.login.domain.User"%>
<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
User user = (User)session.getAttribute("nowUser");
if(user==null){
%>
<div class="container"  id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="login"><span class="glyphicon glyphicon-log-in"><br>로그인</span></a>
	<a id="b2" type="button" class="btn btn-default" href="login/agreement"><span class="glyphicon glyphicon-user"><br>회원가입</span></a>
</div>
<%}else if(user.getUserId().equals("admin")){%>
<div class="container"  id="footnav">
	<a id="mb1" type="button" class="btn btn-default" href="main"><span class="glyphicon glyphicon-log-out"><br>로그아웃</span></a>
	<a id="mb2" type="button" class="btn btn-default" href="#"><span class="glyphicon glyphicon-film"><br>테마관리</span></a>
	<a id="mb3" type="button" class="btn btn-default" href="#"><span class="glyphicon glyphicon-envelope"><br>메일발송</span></a>
</div>
<%}else{%>
<div class="container"  id="footnav">
	<a id="b1" type="button" class="btn btn-default" href="login/logout" ><span class="glyphicon glyphicon-log-out"><br>로그아웃</span></a>
	<a id="b2" type="button" class="btn btn-default" href="#"><span class="glyphicon glyphicon-asterisk"><br>계정관리</span></a>
</div>
<%}%>