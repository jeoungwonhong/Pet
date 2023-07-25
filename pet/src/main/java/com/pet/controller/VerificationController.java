package com.pet.controller;

import java.util.HashMap;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import com.pet.service.CoolsmsService;

@RestController
public class VerificationController {

    private final CoolsmsService coolsmsService;
    private int serverVerificationCode; // 서버에서 생성한 랜덤 인증번호를 저장하는 변수

    @Autowired
    public VerificationController(CoolsmsService coolsmsService) {
        this.coolsmsService = coolsmsService;
    }

    @GetMapping("/sendVerificationCode")
    public ResponseEntity<Map<String, Object>> sendVerificationCode(@RequestParam("tel") String tel) {
        // 랜덤한 인증번호 생성 
        serverVerificationCode = (int)(Math.random() * 900000) + 100000;

        // Coolsms를 이용하여 인증번호 발송
        coolsmsService.sendVerificationCode(tel, serverVerificationCode);

        Map<String, Object> response = new HashMap<>();
        response.put("success", true); // 성공적으로 인증번호 발송됨을 클라이언트에게 알려줍니다.
        return ResponseEntity.ok(response);
    }

    @PostMapping("/verifyVerificationCode")
    public ResponseEntity<Map<String, Object>> verifyVerificationCode(@RequestParam("verificationCode") String userVerificationCode) {
        Map<String, Object> response = new HashMap<>();

        // 사용자가 입력한 인증번호와 서버에서 생성한 인증번호 비교
        if (serverVerificationCode > 0 && String.valueOf(serverVerificationCode).equals(userVerificationCode)) {
            // 인증번호가 일치하는 경우
            response.put("success", true);
            // TODO: 인증이 완료되었으므로, 회원가입 등의 작업을 진행하는 함수 호출
        } else {
            // 인증번호가 일치하지 않는 경우
            response.put("success", false);
        }

        return ResponseEntity.ok(response);
    }
}