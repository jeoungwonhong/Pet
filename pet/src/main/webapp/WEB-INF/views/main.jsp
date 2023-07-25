<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<p>요기다가 므찌게 메인 맹글어주세여~.~ 해더,푸터 인클루드 먼저 꼭꼭!</p>
<!-- 로그인 하지 않은 상태 -->
<c:if test="${member == null }">
<span><a href="/member/login">로그인</a></span>
<span><a href="/member/joinagree">회원가입</a></span>
</c:if>

<!-- 로그인 한 상태 -->
<c:if test="${member != null }">
	<span>${member.userid}님 반갑습니다.</span>
	<span><a href="/member/logout">로그아웃</a></span>
</c:if>


</body>
</html>
