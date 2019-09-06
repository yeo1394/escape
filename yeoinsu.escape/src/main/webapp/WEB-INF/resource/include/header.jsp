<%@ page language="java" contentType="text/html; charset=utf-8"
	pageEncoding="utf-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<a href="${pageContext.request.contextPath}/main"><img id="logo" src="<c:url value="/img/logo.png"/>"></a>
<nav class="navbar navbar-inverse">
	<div class="container-fluid">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
				<span class="icon-bar"></span>
			</button>
		</div>
		<div class="collapse navbar-collapse" id="myNavbar">
			<ul class="nav navbar-nav">
				<li><a href="${pageContext.request.contextPath}/info/guide">&emsp;GUIDE</a></li>
				<li><a href="${pageContext.request.contextPath}/booking">&emsp;BOOKING</a></li>
				<li><a href="${pageContext.request.contextPath}/thema/themaindex">&emsp;THEMA</a></li>
				<li><a href="${pageContext.request.contextPath}/party">&emsp;PARTY</a></li>
				<li><a href="${pageContext.request.contextPath}/notice/noticeList">&emsp;NOTICE</a></li>
				<li><a href="${pageContext.request.contextPath}/question">&emsp;Q&A</a></li>
		</ul>
		</div>
	</div>
</nav>