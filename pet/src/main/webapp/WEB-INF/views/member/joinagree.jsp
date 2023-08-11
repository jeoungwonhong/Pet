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
     <%@include file="../includes/header.jsp" %>
    <div class="login-container">
        <img class="login-banner" src="/resources/img/login-banner.png" alt="banner" style="margin-left: -7px;">
        <div class="p-con">
            <h1>약관 동의</h1>
            <div class="p-consent-row">
                <p >서비스 정책</p>
                <div class="p-consent-check">
                    <label for="agree_all">
                        <input type="checkbox" name="agree_all" id="agree_all">
                        <span id="agree_all_span">전체 동의</span>
                      </label>
                      <label for="agree">
                        <input type="checkbox" name="agree" value="1" class="agree-content1" >
                        <span class="agree-text">만 14세 이상입니다.<strong>(필수)</strong></span>
                      </label>
                      <label for="agree">
                        <input type="checkbox" name="agree" value="2" class="agree-content2">
                        <span class="agree-text2">서비스 이용약관 동의<strong>(필수)</strong><span class="agree-content">내용보기</span></span>
                      </label>
                      <label for="agree">
                        <input type="checkbox" name="agree" value="3" class="agree-content3">
                        <span class="agree-text3">개인정보 수집 및 이용 동의<strong>(필수)</strong> <span class="agree-content">내용보기</span></span>
                      </label>
                      <label for="agree">
                        <input type="checkbox" name="agree" value="4" class="agree-content4">
                        <span class="agree-text4">마케팅 수신 동의 <strong class="select_disable">(선택)</strong><span class="agree-content">내용보기</span></span>
                      </label>
                      <label for="agree" style="margin-left: 10px;">
                        <input type="checkbox" name="agree" value="5" class="agree-content5">
                        <span class="agree-text5">이메일 수신 <strong class="select_disable"></strong></span>
                        <input type="checkbox" name="agree" value="6" class="agree-content6">
                        <span class="agree-text6">문자 수신 <strong class="select_disable"></strong></span>
                      </label>
                      <button class="bee-next-1" id="loginclick" type="submit" disabled="">다음</button>
                    <div class="b-next" >
                    <p>이미 가입된 계정이 있나요?</p>
                        <a href="/member/login">로그인</a>
                </div>
               </div>
            </div>
        </div>
        </div>
    </div>
    <%@include file="../includes/footer.jsp" %>
</body>
</html>