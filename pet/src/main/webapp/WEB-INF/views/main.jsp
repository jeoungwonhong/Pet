<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.4.0/css/all.min.css" integrity="sha512-iecdLmaskl7CVkqkXNQ/ZH/XLlvWZOJyj7Yy7tcenmpD1ypASozpmT/E0iPtmFIB46ZmdtAc9eNBvH0H/ZpiBw==" crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/main.css">

</head>
<body>
<%-- <%@include file = "include/header.jsp" %> --%>

    <div class="container">
        <div class="choi-search-box">
            <div class="choi-search-area">
                <img src="images/icon/Union.png" alt="">
                <input type = "text" placeholder="지역을 검색하세요">
            </div>
            <div class="choi-date-box">
                <div class="choi-date-left">
                    <div class="choi-date-box-img">
                        <img src="images/icon/Reservation_in.png" alt="">
                    </div>
                    <div class="choi-date-box-text">
                        <p>2222년 9월 12일</p>
                        <span>수요일</span>
                    </div>
                </div>
                <div class="choi-date-middel-line"></div>
                <div class="choi-date-right">
                    <div class="choi-date-box-img">
                        <img src="images/icon/Reservation_out.png" alt="">
                    </div>
                    <div class="choi-date-box-text">
                        <p>2222년 9월 12일</p>
                        <span>수요일</span>
                    </div>
                </div>
            </div>
            <div class="choi-pet-box">
                <img src="images/icon/Reservation.png" alt="">
                <div class="choi-pet-box-text">
                    <p>일반동물</p>
                    <p>2 마리</p>
                </div>
                <div class="choi-pet-down">
                    <img src="images/icon/down.png" alt="">
                </div>
            </div>
            <div class="choi-btn-search">
                <div class="choi-btn-search-box">
                    <i class="fa-solid fa-magnifying-glass"></i>
                    <p>검색</p>
                </div>
            </div>
        </div>

        <!-- 슬라이드 -->
        <div class="choi-slide-box">
            <div class="choi-slide-container">
                <div class = "choi-slide-img-box">
                    <a href="#">
                        <img src="images/mainslide/banner1.png" alt="">
                    </a>
                    <a href="#">
                        <img src="images/mainslide/banner2.png" alt="">
                    </a>
                    <a href="#">
                        <img src="images/mainslide/banner3.png" alt="">
                    </a>
                    <a href="#">
                        <img src="images/mainslide/banner4.png" alt="">
                    </a>
                    <a href="#">
                        <img src="images/mainslide/banner5.png" alt="">
                    </a>
                </div>
            </div>
        </div>

        <div class="choi-slide-btn">
            <ul class="choi-pagination">
                <li class="active" data-index="1"></li>
                <li data-index="2"></li>
                <li data-index="3"></li>
                <li data-index="4"></li>
                <li data-index="5"></li>
            </ul>
            <div class="choi-slide-btn-box">
                <i class="fa-solid fa-chevron-left"></i>
                <p>1 / 5</p>
                <i class="fa-solid fa-chevron-right"></i>
            </div>
        </div>
    

    <!-- 호텔 리스트 -->

    <div class="choi-hotel-part">
        <div class="choi-hotel-popular">
            <div class="choi-hotel-title">
                <p>실시간 인기 숙소!</p>
                <div class="choi-hotel-btn">
                    <i class="fa-solid fa-chevron-left"></i>
                    <p></p>
                    <i class="fa-solid fa-chevron-right"></i>
                </div>
            </div>
            <div class="choi-hotel-popular-box">
                <div class="choi-hotel-img-box">
                    <img src="images/popularity/Frame 95.png" class="choi-hotel-img" alt="">
                    <img src="images/icon/likeoff.png" class="choi-hotel-heart">
                </div>
                <div class="choi-hotel-text-box">
                    <div class="choi-hotel-num">
                        <p>1</p>
                    </div>
                    <div class="choi-hotel-text">
                        <p class = "choi-text-name">호텔이름</p>
                        <p class = "choi-text-addr">주소</p>
                        <span>#갱얼쥐</span>
                    </div>   
                </div>
                <div class="choi-hotel-price">
                    <p>99,000원~</p>
                </div>
            </div>
        </div>

        <div class="choi-hotel-reservation">
            <div class="choi-hotel-title">
                <p>실시간 인기 숙소!</p>
                <div class="choi-hotel-btn">
                    <i class="fa-solid fa-chevron-left"></i>
                    <p></p>
                    <i class="fa-solid fa-chevron-right"></i>
                </div>
            </div>
            <div class="choi-hotel-popular-box">
                <div class="choi-hotel-img-box">
                    <img src="images/popularity/Frame 95.png" class="choi-hotel-img" alt="">
                    <img src="images/icon/likeoff.png" class="choi-hotel-heart">
                </div>
                <div class="choi-hotel-text-box">
                    <div class="choi-hotel-num">
                        <p>1</p>
                    </div>
                    <div class="choi-hotel-text">
                        <p class = "choi-text-name">호텔이름</p>
                        <p class = "choi-text-addr">주소</p>
                        <span>#갱얼쥐</span>
                    </div>   
                </div>
                <div class="choi-hotel-price">
                    <p>99,000원~</p>
                </div>
            </div>
        </div>
    </div>

        <div class="choi-hotel-list">
            <div class="choi-hotel-title">
                <p>실시간 인기 숙소!</p>
            </div>
            <div class="choi-hotel-popular-box">
                <div class="choi-hotel-img-box">
                    <img src="images/popularity/Frame 95.png" class="choi-hotel-img" alt="">
                    <img src="images/icon/likeoff.png" class="choi-hotel-heart">
                </div>
                <div class="choi-hotel-text-box">
                    <div class="choi-hotel-text">
                        <p class = "choi-text-name">호텔이름</p>
                        <p class = "choi-text-addr">주소</p>
                        <span>#갱얼쥐</span>
                    </div>   
                </div>
                <div class="choi-hotel-price">
                    <p>99,000원~</p>
                </div>
            </div>
        </div>


    

</div>

<%@include file = "include/footer.jsp" %>

    <script src="js/main.js"></script>
</body>
</html>