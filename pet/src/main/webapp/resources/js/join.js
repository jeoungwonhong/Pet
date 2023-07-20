/**
 * 
 */

/****************************join - jeon - start***********************************/
/* 유효성 검사 통과유무 변수 */
var idCheck = false;            // 아이디
var idckCheck = false;            // 아이디 중복 검사
var pwCheck = false;            // 비번
var pwckCheck = false;            // 비번 확인
var pwckcorCheck = false;        // 비번 확인 일치 확인
var nameCheck = false;            // 이름
var emailCheck = false;            // 이메일
var telCheck = false         // 휴대폰번호

$(document).ready(function(){
	//회원가입 버튼(회원가입 기능 작동)
	$(".join_button").click(function(){
		
		 /* 입력값 변수 */
        var id = $('.id_input').val();                 // id 입력란
        var pw = $('.pw_input').val();                // 비밀번호 입력란
        var pwck = $('.pwck_input').val();            // 비밀번호 확인 입력란
        var name = $('.user_input').val();            // 이름 입력란
        var email = $('.email_input').val();            // 이메일 입력란
        var tel = $('.tel_input').val();        // 휴대폰번호 입력란
        
        /* 아이디 유효성검사 */
        if(id == ""){
            $('.final_id_ck').css('display','block');
            idCheck = false;
        }else{
            $('.final_id_ck').css('display', 'none');
            idCheck = true;
        }
        
        /* 비밀번호 유효성 검사 */
        if(pw == ""){
            $('.final_pw_ck').css('display','block');
            pwCheck = false;
        }else{
            $('.final_pw_ck').css('display', 'none');
            pwCheck = true;
        }
        
        /* 비밀번호 확인 유효성 검사 */
        if(pwck == ""){
            $('.final_pwck_ck').css('display','block');
            pwckCheck = false;
        }else{
            $('.final_pwck_ck').css('display', 'none');
            pwckCheck = true;
        }
 
        /* 이름 유효성 검사 */
        if(name == ""){
            $('.final_name_ck').css('display','block');
            nameCheck = false;
        }else{
            $('.final_name_ck').css('display', 'none');
            nameCheck = true;
        }
        
        /* 이메일 유효성 검사 */
        if(email == ""){
            $('.final_email_ck').css('display','block');
            emailCheck = false;
        }else{
            $('.final_email_ck').css('display', 'none');
            emailCheck = true;
        }
        
        /* 휴대폰번호 유효성 검사 */
        if(tel == ""){
            $('.final_tel_ck').css('display','block');
            mailCheck = false;
        }else{
            $('.final_tel_ck').css('display', 'none');
            mailCheck = true;
        }
 
        /* 최종 유효성 검사 */
        if(idCheck&&idckCheck&&pwCheck&&pwckCheck&&pwckcorCheck&&nameCheck&&emailCheck&&telCheck ){
        	$("#join_form").attr("action", "/member/join");
    		$("#join_form").submit();
        } 
        return false;
 
	});
});

//아이디 중복검사
$('.id_input').on("propertychange change keyup paste input", function(){

	//console.log("keyup 테스트");	
	var userid = $('.id_input').val();			// .id_input에 입력되는 값
	var data = {userid : userid}				// '컨트롤에 넘길 데이터 이름' : '데이터(.id_input에 입력되는 값)'
	
	$.ajax({
		type : "post",
		url : "/member/memberIdChk",
		data : data,
		success : function(result){
			 console.log("성공 여부" + result);
			
				if(result != 'fail'){
					$('.id_input_re_1').css("display","inline-block");
					$('.id_input_re_2').css("display", "none");	
					// 아이디 중복이 없는 경우
					idckCheck = true;
				} else {
					$('.id_input_re_2').css("display","inline-block");
					$('.id_input_re_1').css("display", "none");
					// 아이디 중복된 경우
					idckCheck = false;
				}
			
		}// success 종료
	}); // ajax 종료	
	
	
	

	 
	/* 비밀번호 확인 일치 유효성 검사 */
	 
	$('.pwck_input').on("propertychange change keyup paste input", function(){
	 
	    var pw = $('.pw_input').val();
	    var pwck = $('.pwck_input').val();
	    $('.final_pwck_ck').css('display', 'none');
	 
	    if(pw == pwck){
	        $('.pwck_input_re_1').css('display','block');
	        $('.pwck_input_re_2').css('display','none');
	        pwckcorCheck = true;
	    }else{
	        $('.pwck_input_re_1').css('display','none');
	        $('.pwck_input_re_2').css('display','block');
	        pwckcorCheck = false;
	    }        
	    
	});    
	   
});// function 종료


/****************************join - jeon - end***********************************/