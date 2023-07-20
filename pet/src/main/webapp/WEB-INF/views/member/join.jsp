<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="/resources/css/join.css">
<script
  src="https://code.jquery.com/jquery-3.4.1.js"
  integrity="sha256-WpOohJOqMqqyKL9FccASB9O0KwACQJpFTUBLTYOVvVU="
  crossorigin="anonymous"></script>
</head>
<body>
<!-- 여기 쓰여져있는 class들 다 기능에 필요해서 사용중이니 디자인은 다른 class를 사용해서 만들어주세요 바꾸시면 절대 안됩니다 -->
<div>
	<form id="join_form" method="post">
	<div>
			<div >
				<span>회원가입</span>
			</div>
			
			<div >
				<div >아이디</div>
				<div>
					<input class="id_input" name="userid" id="userid">
				</div>
				<span class="id_input_re_1">사용 가능한 아이디입니다.</span>
				<span class="id_input_re_2">입력하신 아이디가 이미 존재합니다.</span>
				<span class="final_id_ck">아이디를 입력해주세요.</span>
			</div>
			
			<div >
				<div >비밀번호</div>
				<div >
					<input class="pw_input" name="userpass" id="userpass">
				</div>
				<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
			</div>
			
			<div >
				<div >비밀번호 확인</div>
				<div>
					<input class="pwck_input">
				</div>
				<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
				<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
                <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
			</div>
			
			<div >
				<div >이름</div>
				<div>
					<input class="user_input" name="username" id="username">
				</div>
				<span class="final_name_ck">이름을 입력해주세요.</span>
			</div>
			
			<div >
				<div >이메일</div>
				<div >
					<input class="email_input" name="useremail" id="useremail">
				</div>
				<span class="final_email_ck">이메일을 입력해주세요.</span>
			</div>
			
			<div >
				<div >휴대폰</div>
				<div >
					<input class="tel_input" name="tel" id="tel">
				</div>
				<span class="final_tel_ck">번호를 입력해주세요.</span>
			</div>
			
			<div>
				<input type="button" class="join_button" value="가입하기">
			</div>
		</div>
	</form>
</div>
<script src="/resources/js/join.js"></script>
</body>
</html>