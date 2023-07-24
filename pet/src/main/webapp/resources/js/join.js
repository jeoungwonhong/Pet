/**
 * 
 */
function validateForm() {
    var userid = $("#userid").val();
    var userpass = $("#userpass").val();
    var pwck_input = $(".pwck_input").val();
    var username = $("#username").val();
    var useremail = $("#useremail").val();
    var tel = $("#tel").val();
     var verificationCode = $("#verification_code").val();

    // 각 입력 필드에 대한 개별적인 유효성 검사 수행
    var isUseridValid = checkUserid(); // 아이디 유효성 검사
    var isUserpassValid = checkPassword(); // 비밀번호 유효성 검사
    var isPwckInputValid = checkPasswordMatch(); // 비밀번호 확인 일치 여부 검사
    var isUsernameValid = checkName(); // 이름 유효성 검사
    var isUseremailValid = checkEmail(); // 이메일 유효성 검사
    var isTelValid = checkTel(); // 휴대폰 번호 유효성 검사
     var isVerificationCodeValid = verifyVerificationCode();


    // 개별적인 유효성 검사 결과를 콘솔에 출력
    console.log("아이디 유효성 검사:", isUseridValid);
    console.log("비밀번호 유효성 검사:", isUserpassValid);
    console.log("비밀번호 확인 일치 여부 검사:", isPwckInputValid);
    console.log("이름 유효성 검사:", isUsernameValid);
    console.log("이메일 유효성 검사:", isUseremailValid);
    console.log("휴대폰 번호 유효성 검사:", isTelValid);
    console.log("인증번호 유효성 검사:", isVerificationCodeValid);


    // 모든 입력 필드가 유효하면 폼 제출 허용
    if (
        userid !== "" &&
        userpass !== "" &&
        pwck_input !== "" &&
        username !== "" &&
        useremail !== "" &&
        tel !== "" &&
        verificationCode !== "" &&
        isUseridValid &&
        isUserpassValid &&
        isPwckInputValid &&
        isUsernameValid &&
        isUseremailValid &&
        isTelValid &&
        (document.querySelector(".final_verification_code_ck").style.display === "block")
        ) {
        return true; // 모든 입력 필드가 유효하면 폼 제출 허용
    } else {
        alert("모든 입력 칸을 채워주세요.");
        return false; // 적어도 하나의 입력 필드가 비어있거나 유효하지 않으면 폼 제출 방지
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
        return Promise.resolve(false);
    } else if (!usernamePattern.test(userid)) {
        $(".id_input_re_1").hide();
        $(".id_input_re_2").hide();
        $(".id_input_re_3").show();
        $(".final_id_ck").hide();
        return Promise.resolve(false);
    } else {
        $(".id_input_re_1").hide();
        $(".id_input_re_2").hide();
        $(".id_input_re_3").hide();
        $(".final_id_ck").hide();

        // 프로미스를 사용하여 서버와 통신 비동기 처리
        return new Promise(function(resolve, reject) {
            $.ajax({
                type: "post",
                url: "/member/memberIdChk",
                data: { userid: userid },
                success: function(result) {
                    console.log("성공 여부: " + result);

                    if (result === "success") {
                        $(".id_input_re_1").show();
                        $(".id_input_re_2").hide();
                        resolve(true);
                    } else {
                        $(".id_input_re_1").hide();
                        $(".id_input_re_2").show();
                        resolve(false);
                    }
                },
                error: function(xhr, status, error) {
                    console.error("에러 발생: " + error);
                    resolve(false);
                }
            });
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
        return true;
    } else {
        return false;
    }
}



function checkPasswordMatch() {
    var password = $("#userpass").val();
    var passwordConfirmation = $(".pwck_input").val();

    if (password === "" && passwordConfirmation === "") {
        $(".pwck_input_re_1").hide();
        $(".pwck_input_re_2").hide();
        $(".final_pwck_ck").hide();
        return false;
    } else if (password !== passwordConfirmation) {
        $(".pwck_input_re_1").hide();
        $(".pwck_input_re_2").show();
        $(".final_pwck_ck").show();
        return false;
    } else {
        $(".pwck_input_re_1").show();
        $(".pwck_input_re_2").hide();
        $(".final_pwck_ck").hide();
        return true;
    }
}

function checkName() {
            var name = $("#username").val();
            var namePattern = /^[가-힣]{2,10}$/;

            if (namePattern.test(name)) {
                $(".final_name_ck").hide();
                return true;
            } else {
                $(".final_name_ck").show();
                return false;
            }
        }
        
function checkEmail() {
    var email = $("#useremail").val();
    var emailPattern = /^[a-zA-Z0-9._%+-]+@[a-zA-Z0-9.-]+\.[a-zA-Z]{2,}$/;

    if (email === "") {
        $(".check_email").hide();
        $(".final_email_ck").show();
        return false;
        
    } else if (emailPattern.test(email)) {
        $(".check_email").hide();
        $(".final_email_ck").hide();
        return true;
    } else {
        $(".check_email").show();
        $(".final_email_ck").hide();
        return false;
    }
}

function checkTel() {
    var tel = $("#tel").val();
    var telPattern = /^\d{11}$/;

    if (tel === "") {
        $(".check_tel").hide();
        $(".final_tel_ck").show();
        return false;
    } else {
        $(".final_tel_ck").hide();
        if (telPattern.test(tel)) {
            $(".check_tel").hide();
            return true;
        } else {
            $(".check_tel").show();
            return false;
        }
    }
    
}
        
 function sendVerificationCode() {
    var telInput = document.getElementById("tel");
    var tel = telInput.value;
    
    // TODO: 휴대폰 번호 유효성 검사 수행 (checkTel() 함수 호출 등)

    // Ajax를 이용하여 서버에 휴대폰 번호 전송
    $.ajax({
        type: "GET",
        url: "/sendVerificationCode", // 서버의 컨트롤러 URL
        data: { tel: tel }, // 전달할 데이터 (휴대폰 번호)
        success: function(response) {
            // 서버로부터 인증번호를 받아온 경우
            if (response.success) {
                var messageSpan = document.querySelector(".codemessege");
                messageSpan.style.display = "block";
                messageSpan.textContent = "인증번호가 발송되었습니다. 인증번호를 입력해주세요.";
                return true;
            } else {
                var errorSpan = document.querySelector(".codemessege");
                errorSpan.style.display = "block";
                errorSpan.textContent = "인증번호 발송에 실패했습니다. 다시 시도해주세요.";
                return false;
            }
        },
        error: function(xhr, status, error) {
            alert("서버와의 통신에 문제가 발생했습니다. 다시 시도해주세요.");
            return false;
        }
    });
}

function verifyVerificationCode() {
    return new Promise(function(resolve, reject) {
        var verificationCodeInput = document.getElementById("verification_code");
        var userInput = verificationCodeInput.value;

        // 입력값이 비어있는 경우 처리
        if (userInput === "") {
            document.querySelector(".check_verification_code").style.display = "block";
            document.querySelector(".final_verification_code_ck").style.display = "none";
            reject(new Error("인증번호를 입력해주세요."));
            return;
        }

        // Ajax를 이용하여 서버에 인증번호 확인 요청
        $.ajax({
            type: "POST",
            url: "/verifyVerificationCode",
            data: { verificationCode: userInput },
            success: function(response) {
                // 서버에서 인증번호 일치 여부를 받은 경우
                if (response.success) {
                    document.querySelector(".check_verification_code").style.display = "none";
                    document.querySelector(".final_verification_code_ck").style.display = "block";
                    resolve(true); // 인증번호 유효성 검사 결과를 프로미스에 전달
                } else {
                    document.querySelector(".check_verification_code").style.display = "block";
                    document.querySelector(".final_verification_code_ck").style.display = "none";
                    reject(new Error("인증번호가 올바르지 않습니다."));
                }
            },
            error: function(xhr, status, error) {
                alert("서버와의 통신에 문제가 발생했습니다. 다시 시도해주세요.");
                reject(new Error("서버와의 통신에 문제가 발생했습니다."));
            }
        });
    });
}      
 
/****************************join - jeon - end***********************************/ 