/**
 * 
 */

/****************************join - jeon - start***********************************/
 $(document).ready(function() {
        $("#userid").on("input", validateForm);
        $("#userpass").on("input", validateForm);
        $(".pwck_input").on("input", validateForm);
        $("#username").on("input", validateForm);
        $("#useremail").on("input", validateForm);
        $("#tel").on("input", validateForm);
        validateForm();
    });

    function validateForm() {
        var isValid = true;
        isValid = checkUserid() && isValid;
        isValid = checkPassword() && isValid;
        isValid = checkPasswordMatch() && isValid;
        isValid = checkName() && isValid;
        isValid = checkEmail() && isValid;
        isValid = checkTel() && isValid;
        
        var isAllValid = (
            !$(".final_id_ck").is(":visible") &&
            !$(".final_pw_ck").is(":visible") &&
            !$(".final_pwck_ck").is(":visible") &&
            !$(".final_name_ck").is(":visible") &&
            !$(".final_email_ck").is(":visible") &&
            !$(".final_tel_ck").is(":visible")
        );

        if (isAllValid) {
            $(".join_button").prop("disabled", false);
        } else {
            $(".join_button").prop("disabled", true);
        }

        return isValid;
    }

    function join() {
        var isValid = validateForm();
        var isAllValid = (
            !$(".final_id_ck").is(":visible") &&
            !$(".final_pw_ck").is(":visible") &&
            !$(".final_pwck_ck").is(":visible") &&
            !$(".final_name_ck").is(":visible") &&
            !$(".final_email_ck").is(":visible") &&
            !$(".final_tel_ck").is(":visible")
        );

        if (isAllValid) {
            alert("회원가입이 완료되었습니다!");
        } else {
            alert("입력한 정보를 다시 확인해주세요.");
        }
    }


// 회원가입 버튼 클릭 시 실행되는 함수
function join() {
    // 모든 필드에 대한 유효성 검사 수행
    var isValid = validateForm();

    // 모든 검사가 통과되었는지 확인
    var isAllValid = (
        !$(".final_id_ck").is(":visible") &&
        !$(".final_pw_ck").is(":visible") &&
        !$(".final_pwck_ck").is(":visible") &&
        !$(".final_name_ck").is(":visible") &&
        !$(".final_email_ck").is(":visible") &&
        !$(".final_tel_ck").is(":visible")
    );

    // 모든 검사가 통과되었을 때만 회원가입 수행
    if (isAllValid) {
        // 회원가입 수행하는 코드를 여기에 추가
        alert("회원가입이 완료되었습니다!");
    } else {
        // 유효성 검사에 실패한 부분에 대한 안내 메시지를 표시
        alert("입력한 정보를 다시 확인해주세요.");
    }
}
        
function checkUserid() {
    var userid = $("#userid").val();
    var usernamePattern = /^[a-zA-Z0-9]{8,20}$/;

    if (userid === "") {
        $(".id_input_re_1").hide();
        $(".id_input_re_2").hide();
        $(".id_input_re_3").hide();
        $(".final_id_ck").show();
        $(".join_button").prop("disabled", true);
    } else if (!usernamePattern.test(userid)) {
        $(".id_input_re_1").hide();
        $(".id_input_re_2").hide();
        $(".id_input_re_3").show();
        $(".final_id_ck").hide();
        $(".join_button").prop("disabled", true);
    } else {
        $(".id_input_re_1").hide();
        $(".id_input_re_2").hide();
        $(".id_input_re_3").hide();
        $(".final_id_ck").hide();
        
        $.ajax({
            type: "post",
            url: "/member/memberIdChk",
            data: { userid: userid },
            success: function(result) {
                console.log("성공 여부: " + result);

                if (result === "success") {
                    $(".id_input_re_1").show();
                    $(".id_input_re_2").hide();
                } else {
                    $(".id_input_re_1").hide();
                    $(".id_input_re_2").show();
                }
            },
            error: function(xhr, status, error) {
                console.error("에러 발생: " + error);
            }
        });
    }
}

function checkPassword() {
    var password = $("#userpass").val();
    var passwordPattern1 = /^.{8,20}$/;
    var passwordPattern2 = /^(?=.*[a-z])(?=.*[A-Z]).{8,20}$/;
    var passwordPattern3 = /^(?=.*\d).{8,20}$/;

    // 초기 상태는 모든 조건에 오류가 있음을 가정하고 오류 메시지를 보여줍니다.
    $(".passcheck1").css("color", "grey");
    $(".passcheck2").css("color", "grey");
    $(".passcheck3").css("color", "grey");
    $(".final_pw_ck").show();

    if (passwordPattern1.test(password)) {
        $(".passcheck1").css("color", "green");
    }

    if (passwordPattern2.test(password)) {
        $(".passcheck2").css("color", "green");
    }

    if (passwordPattern3.test(password)) {
        $(".passcheck3").css("color", "green");
    }

    // 모든 조건에 오류가 없을 때만 오류 메시지를 숨깁니다.
    if (passwordPattern1.test(password) && passwordPattern2.test(password) && passwordPattern3.test(password)) {
        $(".final_pw_ck").hide();
    }
}



function checkPasswordMatch() {
    var password = $("#userpass").val();
    var passwordConfirmation = $(".pwck_input").val();

    if (password === "" && passwordConfirmation === "") {
        $(".pwck_input_re_1").hide();
        $(".pwck_input_re_2").hide();
        $(".final_pwck_ck").hide();
    } else if (password !== passwordConfirmation) {
        $(".pwck_input_re_1").hide();
        $(".pwck_input_re_2").show();
        $(".final_pwck_ck").show();
    } else {
        $(".pwck_input_re_1").show();
        $(".pwck_input_re_2").hide();
        $(".final_pwck_ck").hide();
    }
}

function checkName() {
            var name = $("#username").val();
            var namePattern = /^[가-힣]{2,10}$/;

            if (namePattern.test(name)) {
                $(".final_name_ck").hide();
            } else {
                $(".final_name_ck").show();
            }
        }
        
function checkEmail() {
    var email = $("#useremail").val();
    var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

    if (email === "") {
        $(".check_email").hide();
        $(".final_email_ck").show();
        $(".join_button").prop("disabled", true); // 이메일이 비어있으면 회원가입 버튼 비활성화
    } else if (emailPattern.test(email)) {
        $(".check_email").hide();
        $(".final_email_ck").hide();
    } else {
        $(".check_email").show();
        $(".final_email_ck").hide();
        $(".join_button").prop("disabled", true); // 이메일이 유효하지 않으면 회원가입 버튼 비활성화
    }
}

function checkTel() {
    var tel = $("#tel").val();
    var telPattern = /^\d{11}$/;

    if (tel === "") {
        $(".check_tel").hide();
        $(".final_tel_ck").show();
        $(".join_button").prop("disabled", true); // 휴대폰 번호가 11자리가 아니면 회원가입 버튼 비활성화
    } else {
        $(".final_tel_ck").hide();
        if (telPattern.test(tel)) {
            $(".check_tel").hide();
        } else {
            $(".check_tel").show();
            $(".join_button").prop("disabled", true); // 휴대폰 번호가 11자리가 아니면 회원가입 버튼 비활성화
        }
    }
    
}
        
        
        
 
/****************************join - jeon - end***********************************/ 