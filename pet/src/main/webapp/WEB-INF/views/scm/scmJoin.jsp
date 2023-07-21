<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

</head>
<body>

	<form method="post">
		<div>
			<label for="userid">아이디</label>
			<input type="text" name="userid" placeholder="아이다를 적어주세요(4~20자)" min="4" maxlength="20" title="4~20자 까지 입력" required autofocus/>
			<span class="point successIdChk">아이디는 4자 이상 20자 이하로 설정해주시기 바랍니다.</span>
			<input type="hidden" id="idDoubleChk"/>
		</div>
	</form>
<script src="/resources/js/scmJoin.js"></script>
</body>
</html>