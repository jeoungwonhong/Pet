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
            <div class="b_scm_content">
                <div class="lmember">
					<article>
							<h2 class = "text-center">Q&A</h2>
								<div class="">
									<label for="title">제목</label>
									<input type="text" class="form-control" name="subject" id="subject" placeholder="제목" readonly>
								</div>
								
							<div class="mb-3 d-flex menu">
							   <div>
								  <label for="reg_num"></label>
								  <label for="reg_id"></label>
								  <input type="hidden" name="upass" value="" />
								  <input type="hidden" name="resnum" value=""/>
							   </div>
							   <div>
								  <label for="reg_wdate"></label>
								  <label for="reg_readcount"></label>
							   </div>
							</div>  		
							
								<div class="mb-3 mt-4 review">
									<label for="content">내용</label>
									<div class = "mb-3 mt-4 review-img">
									<img src = "../upload/" alt = "">
									<textarea class="form-control mt-3" rows="5" name="content" id="content" readonly></textarea>
									</div>
								</div>
									
											
							<div class ="b-qna">
									<input type = "hidden" name = "level" id="level" />
									<input type = "hidden" name = "img" id="img" />
									<input type = "hidden" name = "readcount" id="readcount" />
									<input type = "hidden" name = "replycount" id="replycount"/>
									<input type = "hidden" name = "like" id="like" />
								<button type="button" class="btn btn-sm b-qna-btn" onclick="">수정</button>
								<button type="button" class="btn btn-sm b-qna-btn" onclick="">삭제</button>
				
								<a type="button" class="btn btn-sm b-qna-btn" id="btnList" onclick="return confirm('관리자 권한으로 삭제하시겠습니까?')" href="">관리자 권한으로 삭제</a>
				
							</div>
				
						
				<div class="card mb-2">
					<div class="card-header bg-light">
							<i class="fa fa-comment fa"></i> COMMENT
					</div>
					<form method = "post" action = "reviewCommentProc.jsp" name = "form" id = "form">
					<input type ="hidden" name = "ref" value=""/>
					<div class="card-body">
						<ul class="list-group list-group-flush">
							<li class="list-group-item">
							 <div class="form-inline mb-2">
								<input type="text" class="form-control ml-2" placeholder="" id="uid" readonly />
							</div>
							<textarea class="form-control" name="replyContent" rows="3" placeholder = "댓글을 입력해주세요"></textarea>
				
							<div class ="b-qna">
								<button type="submit" class="btn btn-sm b-qna-btn mt-2" id="btnSave" value="등록" >등록</button>
							</div>
							</li>
						</ul>
					</div>
				  </form>
				  </div>
				  
					<table class="table table-striped"
						style="text-align: center; border: 1px solid #dddddd;">
					<thead>
							<tr>
								<th colspan="3" style="background-color:#eeeeee;text-align: center;">댓글</th>
							</tr>
							<thead>			
						</thead>
						
						
							<tbody>
								<tr>
									<td style="text-align: left;"></td>  
									<td style = "text-align : center;"></td>
									<td style = "text-align: right;">
									 <a href = "#" type="button" class="re-btn" id="re-review">대댓글</a> 
									<a onclick = "return confirm('정말로 삭제하시겠습니까?')" href="" class="btn-del">삭제</a>
									</td>
								</tr>
								
							</tbody>
				 </table >
				</article>
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