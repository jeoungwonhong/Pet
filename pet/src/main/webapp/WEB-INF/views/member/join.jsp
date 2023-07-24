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
  <style>
/* 기본 버튼 스타일 제거 */
.button-back{
	width: 200px;
	height: 50px;
	border-radius: 15px;
	display: inline-block;
	background: orange;	
}
.join_button {
text-align:center;
    background: none;
    border: none;
    padding: 0;
    margin: 0;
    cursor: pointer;
    color: white; /* 버튼이 비활성화된 경우 색상을 설정하세요 */
    font-size: 16px;
}

/* 버튼이 비활성화된 경우 스타일 설정 */
.join_button[disabled] {
    color: grey; /* 버튼이 비활성화된 경우 색상을 설정하세요 */
    cursor: not-allowed; /* 비활성화된 버튼에 마우스 커서 스타일 변경 */
}
  </style>
</head>
<body>
<!-- 여기 쓰여져있는 class들 다 기능에 필요해서 사용중이니 디자인은 다른 class를 사용해서 만들어주세요 바꾸시면 절대 안됩니다 -->
<!-- 간격이 없으면 깜빡거려요 간격이 조금 필요합니다 -->
<div>
	<form id="join_form" method="post" onsubmit="return validateForm()">
	<div>
			<di>
				<span>회원가입</span>
			</div>
			
			<div style="height:100px;">
				<div >아이디</div>
				 <div>
                <input class="id_input" name="userid" id="userid" onkeyup="checkUserid()">
            </div>
            <span class="id_input_re_1" style="display:none;">사용 가능한 아이디입니다.</span>
            <span class="id_input_re_2" style="display:none;">입력하신 아이디가 이미 존재합니다.</span>
            <span class="id_input_re_3" style="display:none;">영어 소문자와 숫자를 섞어 8-20자 내외로 작성해주세요.</span>
			<span class="final_id_ck">아이디를 입력해주세요.</span>
			</div>
			
			<div style="height:150px;">
				<div >비밀번호</div>
				<div >
					<input class="pw_input" name="userpass" id="userpass" onkeyup="checkPassword()">
				</div>
				<span class="passcheck1">8~20자 이내</span><br>
				<span class="passcheck2">대소문자</span><br>
				<span class="passcheck3">숫자</span><br>
				<span class="final_pw_ck">비밀번호를 입력해주세요.</span>
			</div>
			
			<div style="height:100px;">
				<div >비밀번호 확인</div>
				<div>
					<input class="pwck_input" onkeyup="checkPasswordMatch()">
				</div>
				<span class="final_pwck_ck">비밀번호 확인을 입력해주세요.</span>
				<span class="pwck_input_re_1">비밀번호가 일치합니다.</span>
                <span class="pwck_input_re_2">비밀번호가 일치하지 않습니다.</span>
			</div>
			
			<div style="height:100px;">
				<div >이름</div>
				<div>
					<input class="user_input" name="username" id="username" onkeyup="checkName()">
				</div>
				<span class="final_name_ck">이름을 입력해주세요.</span>
			</div>
			
		<div style="height:100px;">
            <div>이메일</div>
            <div>
                <input class="email_input" name="useremail" id="useremail" onkeyup="checkEmail()">
            </div>
            <span class="check_email" style="display: none;">올바른 이메일 형식을 사용해주세요.</span>
            <span class="final_email_ck" style="display: none;">이메일을 입력해주세요.</span>
        </div>
			
		<div style="height:100px;">
            <div>휴대폰</div>
            <div>
                <input class="tel_input" name="tel" id="tel" onkeyup="checkTel()">
            </div>
            <span class="check_tel" style="display: none;">번호를 입력해주세요.</span>
            <span class="final_tel_ck" style="display: none;">번호를 입력해주세요.</span>
        </div>
			
			<div class="button-back">
				<input type="submit" class="join_button" onclick="join()"  value="가입하기">
			</div>
		</div>
	</form>
</div>
<script src="/resources/js/join.js"></script>
</body>
</html>