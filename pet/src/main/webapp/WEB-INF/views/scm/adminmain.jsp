<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="/resources/css/bootstrap.css">
 <link rel="stylesheet" href="/resources/css/scm-style.css"> 
<title>Insert title here</title>
</head>
<body>

    <header>
        <div class="logo">
            <a href="adminmain.html">LOGO</a>
        </div>
        <div class="b_scm_title">
            안녕하세요.
            <br/> 
            <span>000</span> 관리자님!
        </div>
        <nav>
            <ul class="gnb">
               <li><a href="?fname=calculate">정산관리</a></li>
                <li><a href="?fname=product">상품관리</a></li>
                <li><a href="">예약관리</a>
                    <ul class="lnb">
                        <li><a href="?fname=order">예약주문</a></li>
                        <li><a href="?fname=check">예약확인</a></li>
                        <li><a href="?fname=completion">예약완료</a></li>
                    </ul>
                </li>
                <li><a href="?fname=qna">Q&A관리</a></li>
                <li><a href="fname=review">리뷰관리</a></li>
            </ul>
        </nav>
    </header>
        <div class="b_scm_main">
            <div class="container">
            <div class="b_main_content">
                <div class="b_scm_main_box1">
                    <div class="b_scm_main_box1_order">
                        <div class="b_order">
                            총 주문 수
                        </div>
                        <div class="b_order_total">
                            <span>0</span>
                        </div>
                    </div>
                    <div class="b_scm_main_box1_process">
                        <div class="b_process">
                            총 주문 처리 수
                        </div>
                        <div class="b_process_total">
                            <span>0</span>
                        </div>
                    </div>
                    <div class="b_scm_main_box1_complete">
                        <div class="b_complete">
                            총 주문 완료 수
                        </div>
                        <div class="b_complete_total">
                            <span>0</span>
                        </div>
                    </div>
                </div>
                <div class="row">
                    <div class="b_scm_main_box2">
                        <div class="b_ordervolume">
                            <div class="b_ordervolume_title">판매실적</div>
                            <canvas id="myChart"></canvas>
                        </div>
    
                    </div>
                    <div class="b_scm_main_box3">
                        <div class="b_scm_main_box3_qna">
                            <div class="b_qna">
                                Q&A 확인
                            </div>
                            <div class="b_qna_total">
                                <span>0</span>
                            </div>
                        </div>
                        <div class="b_scm_main_box3_review">
                            <div class="b_review">
                                리뷰 확인
                            </div>
                            <div class="b_review_total">
                                <span>0</span>
                            </div>
                        </div>
                    </div>
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