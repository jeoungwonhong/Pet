$("#userid").blur(function(){
    	var scm_id = $("#userid").val();
    	if(scm_id == "" || scm_id.length < 4){
    		$(".successIdChk").text("이름은 4자 이상 20자 이하로 설정해주세요 :)");
			$(".successIdChk").css("color", "red");
			$("#idDoubleChk").val("false");
    	}else{
    		$.ajax({
				url : '${pageContext.request.contextPath}/idCheck?scm_id='+ scm_id,
				type : 'post',
				cache : false,
				success : function(data) {
					if (data == 0) {
						$(".successIdChk").text("사용가능한 아이디입니다.");
						$(".successIdChk").css("color", "green");
						$("#idDoubleChk").val("true");
					} else {
						$(".successIdChk").text("사용중인 아이디입니다 :p");
						$(".successIdChk").css("color", "red");
						$("#idDoubleChk").val("false");
					}
				}, error : function() {
					console.log("실패");
				}
			});
    	}
    });