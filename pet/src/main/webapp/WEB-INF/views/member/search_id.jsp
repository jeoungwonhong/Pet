<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script>
	var path = "${pageContext.request.contextPath}";
	
	$(document).ready(function(){
		var mst = "${msg}";
		if(msg != ""){
			alert(msg);
		}
	});
	
	function fnSubmit(){
		var email_rule =  /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
		var tel_rule = /^\d{2,3}-\d{3,4}-\d{4}$/;
		
/* 		if(!tel_rule.test($("#tel").val())){
			alert("전화번호 형식에 맞게 입력해주세요.");
			return false;
		} */
		
		if(confirm("아이디를 찾으시겠습니까?")){
			$("#createForm").submit();
			
			return false;
		}
	}
	
</script>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<form commandName="searchVO" id="createForm" action="${path}/member/search_result_id" method="post">
<h1>아이디 찾기</h1>

	<div>
		<input type="text" id="username" name="username" placeholder="이름">
	</div>
	
	<div>
	<input type="text" id="tel" name="tel" placeholder="010-0000-0000">
	</div>
	
	<a href="javascript:void(0)" onclick="fnSubmit(); return false;">아이디 찾기</a>
	
	<div>
		<a href="/member/login">로그인하기</a>
	</div>
</form>

</body>
</html>