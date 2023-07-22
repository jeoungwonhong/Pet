<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <link rel="stylesheet" href="http://code.jquery.com/ui/1.12.1/themes/base/jquery-ui.css">
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.3/css/all.min.css">
 <link rel="stylesheet" href="/resources/css/bootstrap.css">
 <link rel="stylesheet" href="/resources/css/scm-style.css"> 
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
                    <h1 class="pt-5 mb-3 text-center">상품관리</h1>
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
                    <div class="search-container">
                        <input type="text" class="search-input" placeholder="검색어를 입력하세요">
                       <a href="?fname=search"><button type="submit" class="search-button" style="padding-bottom: 10px;">
                     <i class="fas fa-search search-icon"></i>		
                       </button></a>
                    </div>
                    <div class="row">
                        <table class="table  memberstbl">
                            <thead>
                                <tr>
                                    <th>번호</th>
                                    <th>코드번호</th>
                                    <th>반려동물이미지</th>
                                    <th>상품명 </th>
                                    <th>상품가격 </th>
                                    <th>상태</th>
                                    <th>상품등록날짜</th>
                                </tr>
                            </thead>
                            <tbody>
                
                    <tr>
                        <td class="b-list">1</td>
                        <td class="b-list">2343</td>
                        <td class="b-list"><img src="/resources/img/imgma.jpg" alt="도마뱀"></td>
                        <td class="b-list">은비네 자온조 사육장</td>
                        <td class="b-list">300,000원</td>
                        <td class="b-list">
                           
                            <select name="level" class="level" onchange="memAddr(this, );">
                                <option value="0" >판매중</option>
                                <option value="1"  >일시품절 </option> 
                            </select>
                            
                        </td>
                        <td class="b-list">2023.04.20</td>
                    </tr>
                    <tr>
                        <td class="b-list">2</td>
                        <td class="b-list">23453</td>
                        <td class="b-list"><img src="/resources/img/va.jpg" alt="도마뱀"></td>
                        <td class="b-list">은비네 유리사육장</td>
                        <td class="b-list">200,000원</td>
                        <td class="b-list">
                            
                            <select name="level" class="level" onchange="memAddr(this, );">
                                <option value="0" >판매중</option>
                                <option value="1"  >일시품절 </option> 
                            </select>
                            
                        </td>
                        <td class="b-list">2023.06.18</td>
                    </tr>
                    
                
                        </tbody>
                            
                        </table>
                    </div> <!-- /row -->
                    <div class="mt-3 mb-5 row ">
                        <ul class="pagination justify-content-center mb-5">
                        
                                <!-- <li class="page-item"> <a href="?user/memberlist&page=" class="page-link"></a></li>  -->
                    
                        </ul>
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