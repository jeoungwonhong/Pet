package com.pet.service;

import java.util.HashMap;
import org.json.simple.JSONObject;
import net.nurigo.java_sdk.api.Message;
import net.nurigo.java_sdk.exceptions.CoolsmsException;

public class CoolsmsServiceImpl implements CoolsmsService {
    private String api_key = "NCSR5OMFBEZFZTOU";
    private String api_secret = "SCFPEHED8T3THO6PZXRV0S7ACTB9KOMK";

    @Override
    public void sendVerificationCode(String tel, int verificationCode) {
        Message coolsms = new Message(api_key, api_secret);

        HashMap<String, String> params = new HashMap<>();
        params.put("to", tel);
        params.put("from", "01022425002"); // 발신 전화번호 (coolsms에서 미리 인증 받아야 합니다.)
        params.put("type", "SMS");
        params.put("text", "[TEST] 인증번호는 [" + verificationCode + "] 입니다.");
        params.put("app_version", "test app 1.0");

        try {
            JSONObject obj = (JSONObject) coolsms.send(params);
            System.out.println(obj.toString());
        } catch (CoolsmsException e) {
            System.out.println(e.getMessage());
            System.out.println(e.getCode());
        }
    }
}
