<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var path = "${pageContext.request.contextPath}";
	
	$(document).ready(function(){
		
	});
</script>	
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="/resources/css/SearchIdPw.css">
</head>
<body>
 <%@include file="../includes/header.jsp" %>
 <div class="search-container">
        <img class="login-banner" src="/resources/img/login-banner.png" alt="banner" style="margin-left: -7px;">
        <div class="s-id">
<h1>${searchVO.userid}님의 비밀번호입니다.</h1>
<div class="rs">
<c:choose>
	<c:when test="${empty searchVO}">
		<p>조회 결과가 없습니다.</p>
	</c:when>
	<c:otherwise>
		<p>${searchVO.userpass}</p>
	</c:otherwise>
</c:choose>
</div>
	<div class="bee-login-2">
		<a href="/member/login">로그인</a>
	</div>
	<div class="do-go">
		<a href="/member/search_pwd">비밀번호찾기</a>
	</div>
	</div>
</div>
<%@include file="../includes/footer.jsp" %>
</body>
</html>