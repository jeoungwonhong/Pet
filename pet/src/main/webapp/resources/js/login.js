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
        }
        else{
            $("#error-msg").hide();
        }
}

function login(){    
    $("#span11").show();
    $("#username").css("margin-top","23px");
}

function pass(){    
    $("#span1").show();
    $("#password").css("margin-top","23px");
}
/*******약관동의*******/

document.addEventListener('DOMContentLoaded', function () {
    
    const agreeChkAll = document.querySelector('input[name=agree_all]');
    agreeChkAll.addEventListener('change', (e) => {
        let agreeChk = document.querySelectorAll('input[name=agree]');
        for (let i = 0; i < agreeChk.length; i++) {
            agreeChk[i].checked = e.target.checked;
        }
    });
});

/******약관동의 컬러 ******/
/**전체 컬러**/


$(document).on("click", "#agree_all", function () {
    const isAgreeAllChecked = $('#agree_all').is(":checked");
    if (isAgreeAllChecked) {
        $("#agree_all_span").css("color", "#F27405");
        $("input[name='agree']").prop("checked", true);
        $("input[name='agree']").next("span").css("color", "#F27405");
        $("input[name='agree']").css("border-color", "#F27405");
        $("input[name='agree']").css("background-color", "#F27405");
        $("input[name='agree']").css("accent-color", "#F27405");
        $("input[name='agree_all']").css("accent-color", "#F27405");
    } else {
        $("#agree_all_span").css("color", "#a1a0a0");
        $("input[name='agree']").prop("checked", false);
        $("input[name='agree']").next("span").css("color", "#a1a0a0");
    }
});


 $(document).on("click",".agree-content2",function(){
    if ($('.agree-content2').is(":checked")) {
        $(".agree-text2").css("color","#F27405");
        $(".agree-content2").css("accent-color","#F27405");
    }else{
        $(".agree-text2").css("color","#a1a0a0");
    }
 });
 $(document).on("click",".agree-content3",function(){
    if ($('.agree-content3').is(":checked")) {
        $(".agree-text3").css("color","#F27405");
        $(".agree-content3").css("accent-color","#F27405");
    }else{
        $(".agree-text3").css("color","#a1a0a0");
    }
 });
 $(document).on("click",".agree-content4",function(){
    if ($('.agree-content4').is(":checked")) {
        $(".agree-text4").css("color","#F27405");
        $(".agree-content4").css("accent-color","#F27405");
    }else{
        $(".agree-text4").css("color","#a1a0a0");
    }
 });
 $(document).on("click",".agree-content5",function(){
    if ($('.agree-content5').is(":checked")) {
        $(".agree-text5").css("color","#F27405");
        $(".agree-content5").css("accent-color","#F27405");
    }else{
        $(".agree-text5").css("color","#a1a0a0");
    }
 });
 $(document).on("click",".agree-content6",function(){
    if ($('.agree-content6').is(":checked")) {
        $(".agree-text6").css("color","#F27405");
        $(".agree-content6").css("accent-color","#F27405");
    }else{
        $(".agree-text6").css("color","#a1a0a0");
    }
 });
 
 /******약관동의 다음 활성화*******/
 
  function checkAllAgreements() {
    let allAgreed = $('.p-consent-check input[type="checkbox"][name="agree"]:checked').length === 3; // Modify the count if you have more or fewer required checkboxes
    $('#loginclick').prop('disabled', !allAgreed);
    $('#loginclick').css('background-color', allAgreed ? '#007bff' : '#a1a0a0');
    $('#loginclick').css('cursor', allAgreed ? 'pointer' : 'not-allowed');
  }

  // Check on initial page load
  checkAllAgreements();

  // Check whenever a checkbox is changed
  $('.p-consent-check input[type="checkbox"][name="agree"]').change(function() {
    checkAllAgreements();
  });

