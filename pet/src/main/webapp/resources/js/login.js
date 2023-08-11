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

$(document).on("click",".agree-content1",function(){
    if ($('.agree-content1').is(":checked")) {
        $(".agree-text").css("color","#F27405");
        $(".agree-content1").css("accent-color","#F27405");
    }else{
        $(".agree-text").css("color","#a1a0a0");
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
 document.addEventListener("DOMContentLoaded", function () {
    const agreeAllCheckbox = document.getElementById("agree_all");
    const agreeContent1Checkbox = document.querySelector(".agree-content1");
    const agreeContent2Checkbox = document.querySelector(".agree-content2");
    const agreeContent3Checkbox = document.querySelector(".agree-content3");
    const nextButton = document.getElementById("loginclick");

    
    function areRequiredCheckboxesChecked() {
      return (
        agreeContent1Checkbox.checked &&
        agreeContent2Checkbox.checked &&
        agreeContent3Checkbox.checked
      );
    }

    
    function updateNextButtonState() {
      nextButton.disabled = !areRequiredCheckboxesChecked();
      nextButton.style.cursor = areRequiredCheckboxesChecked() ? "pointer" : "not-allowed";
    }

    
    agreeAllCheckbox.addEventListener("change", updateNextButtonState);
    agreeContent1Checkbox.addEventListener("change", updateNextButtonState);
    agreeContent2Checkbox.addEventListener("change", updateNextButtonState);
    agreeContent3Checkbox.addEventListener("change", updateNextButtonState);
  });
