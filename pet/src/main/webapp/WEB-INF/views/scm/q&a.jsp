<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
<link rel="stylesheet" href="/resources/css/bootstrap.css">
<link rel="stylesheet" href="/resources/css/scm-style.css">
<title>Insert title here</title>
</head>
<body>
    <header>
        <div class="logo">
            <a href="/scm/adminmain">LOGO</a>
        </div>
        <div class="b_scm_title">
            안녕하세요.
            <br/> 
            <span>000</span> 관리자님!
        </div>
        <nav>
            <ul class="gnb">
               <li><a href="/scm/calculate">정산관리</a></li>
                <li><a href="/scm/product">상품관리</a></li>
                <li><a href="">예약관리</a>
                    <ul class="lnb">
                        <li><a href="/scm/order">예약주문</a></li>
                        <li><a href="/scm/check">예약확인</a></li>
                        <li><a href="/scm/completion">예약완료</a></li>
                    </ul>
                </li>
                <li><a href="/scm/q&a">Q&A관리</a></li>
                <li><a href="/scm/review">리뷰관리</a></li>
            </ul>
        </nav>
    </header>
        <div class="b_scm_main">
            <div class="container">
            <div class="b_scm_content">
                <div class="lmember">
                    <h1 class="pt-5 mb-3 text-center">Q&A 확인</h1>
                    <div class="datelist">
                        <input  class="datepicker" id="startDate" style="margin-left: 300px;" />
                        <p style="font-size: 20px; margin-top: 15px; margin-left: 10px; margin-right: 10px;">~</p>
                        <input class="datepicker" id="endDate" style="margin-right: 10px;" />
                        <div class="datefilter">
                            <button name="filterDate" value="1">오늘</button>
                            <button name="filterDate" value="2">일주일</button>
                            <button name="filterDate" value="3">3개월</button>
                            <button name="filterDate" value="4">6개월</button>
                            <button style="border-radius: 10px; font-size: 20px; background-color: #f3e3d0;">검색</button>
                        </div>
                    </div>
                    <div class="row">
                        <table class="table  memberstbl">
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>작성자</th>
                                    <th>제목</th>
                                    <th>작성일</th>
                                    <th>조회</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <td class="list">1</td>
                                    <td class="list">000</td>
                                    <td class="list"><a href="/scm/q&a2">0000</a></td>
                                    <td class="list">2023.04.20</td>
                                    <td class="list">0</td>
                                </tr>
                        </tbody>
                        </table>
                    </div> <!-- /row -->
            </div>
        </div>
    </div>
    </div>
    <footer>
        <div class="flogo"><a href="#">LOGO</a></div>
        <div class="cright">aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaa</div>
    </footer>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="https://code.jquery.com/ui/1.13.0/jquery-ui.min.js"></script>    
<script src="/resources/js/scm-script.js"></script>
</body>
</html>