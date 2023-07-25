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

</head>
<body>
<h1>아이디 찾기</h1>
<c:choose>
	<c:when test="${empty searchVO}">
		<p>조회 결과가 없습니다.</p>
	</c:when>
	<c:otherwise>
		<p>${searchVO.username}</p>
	</c:otherwise>
</c:choose>
	<div>
		<a href="/member/search_id">ID 다시찾기</a>
	</div>
	<div>
		<a href="/member/login">로그인하기</a>
	</div>
</body>
</html>