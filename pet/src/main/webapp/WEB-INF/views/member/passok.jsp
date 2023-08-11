<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	 <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="/resources/css/login.css">

    <script src="/resources/js/jquery.min.js"></script>
    <script src="/resources/js/login.js"></script>
</head>
<body>
    <header>
        <img src="./img/petlogo.png" alt="logo" class="p-logo">
        <img src="./img/mlogo.png" alt="mlogo" class="m-logo">
        <div class="login">
            <a href="#">로그인</a>
            <a href="#">회원가입</a>
        </div>
        <div class="m-login">
            <img src="./img/user.png" alt="사용자">
        </div>
    </header>
    <div class="login-container">
        <img class="login-banner" src="./img/login-banner.png" alt="banner" style="margin-left: -7px;">
        <div class="p-login" style="margin-top: 160px;">
            <h2>누룽지님의 아이디입니다.</h2>
            <p>aaaa123</p>
                <button class="bee-login-1" id="loginclick" type="submit" onclick="LoginClick()">로그인</button>
                <div class="b-regi" style="margin-left: 320px;color: #424141;border-bottom: 1px solid #424141;width: 70px; margin-top: 10px;">
                <a href="#">로그인하기</a>
                </div>
        </div>
    </div>
</body>
</html>