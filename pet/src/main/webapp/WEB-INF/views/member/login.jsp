<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>                                                                                                          
<script type="text/javascript">                                                                                                                                                                   
$(function(){                                                                                                                                                                                     
	var msg = "${msg}";                                                                                                                                                                             
	if(msg != ""){                                                                                                                                                                                  
		alert(msg);                                                                                                                                                                                      
		}                                                                                                                                                                                               
});                                                                                                                                                                                               
                                                                                                                                                                                      
function frmCheck() {                                                                                                                                                                             
	if ($("#userid").val() == "") {                                                                                                                                                                  
		alert("아이디를 입력해주세요.");                                                                                                                                                              
		$("#userid").focus();                                                                                                                                                                          
		return false;                                                                                                                                                                                 
	}                                                                                                                                                                                               
	if ($("#userpass").val() == "") {                                                                                                                                                                 
		alert("비밀번호를 입력해주세요.");                                                                                                                                                            
		$("#userpass").focus();                                                                                                                                                                         
		return false;                                                                                                                                                                                 
	}                                                                                                                                                                                               
$("#loginform").submit();       
	/* alert("전송"); */
	
	}                                                                                                                                                                                                 
</script>  
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<div class="container">
	<div class="">
        <h1>Login</h1>
    </div>
    <form id="loginform" action="/member/login" method="post">
    <c:if test="${not empty rememberCookie.getValue()}">
    	<c:set value="checked" var="checked"/>
    </c:if>
        <div><span>ID : </span><input type="text" name="userid" value="${rememberCookie.getValue()}"/></div>
        <div><span>PW : </span><input type="password" name="userpass"/></div>
        <div>
        	<div>
        		<input type="checkbox" id="customCheck" value="true" ${checked}/>
        		<label for="customCheck">Remember Me</label>
        	</div>
        </div>
        
        <!-- 여기 dispaly="flex"해서 나란히 놔주세요 -->
        <div>
        	<div><a href="#">ID·PW찾기</a></div>
        	<div><a href="joinagree">회원가입</a></div>
        </div>
        
        <!--------------------------------------->
        
        <div>
        	<a href="#" onclick="return frmCheck();">로그인</a>
        </div>
        
        <!-- 소셜 Login 동그란 모양을 로고 넣어주세요 -->
        <div>
	        <a href="#">N</a>
	        <a href="#">K</a>
	        <a href="#">G</a>
        </div>
	</form>
        

</body>
</html>