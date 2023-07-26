$(document).ready(function(){
    $('.fa-regular').on('click',function(){
        $('input').toggleClass('active');
        if($('input').hasClass('active')){
            $(this).attr('class',"fa-regular fa-eye-slash")
            .prev('input').attr('type',"text");
        }else{
            $(this).attr('class',"fa-regular fa-eye")
            .prev('input').attr('type','password');
        }
    });
});

/***아이디 체크 부분 ***/
$(document).on("click","#huid",function(){
    if ($('#huid').is(":checked")) {
        $("#huid-span").css("color","#F27405");
        $("#huid").css("accent-color","#F27405");
    }else{
        $("#huid-span").css("color","#a1a0a0");
    }
 });

/**비밀번호 밑 부분**/
function LoginClick(){

        const usernameInput = document.getElementById("username").value;
        const passwordInput = document.getElementById("password").value;


        if ($("#username").val() == '' || $("#password").val() == '') {
            $("#error-msg").show();
            return false;
        }
        else{
            $("#error-msg").hide();
        }
        
    $("#loginform").submit();       
	/*alert("로그인버튼작동");*/
}

function login(){    
    $("#span11").show();
    $("#username").css("margin-top","23px");
}

function pass(){    
    $("#span1").show();
    $("#password").css("margin-top","23px");
}

