package com.pet.controller;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.pet.model.MemberVO;
import com.pet.service.MemberService;

@Controller
@RequestMapping(value="/member")
public class MemberController {
	
	private static final Logger logger = LoggerFactory.getLogger(MemberController.class);
	
	@Autowired
	private MemberService memberservice;
	
	//로그인 페이지 이동
	@RequestMapping(value = "login" , method = RequestMethod.GET)
	public void loginGET() {
		logger.info("로그인 페이지 진입");
	}
	
	//회원가입 페이지 이동(약관동의)
		@RequestMapping(value = "joinagree", method = RequestMethod.GET)
		public void joinagreeGET() {
			logger.info("회원가입 페이지 진입");
		}
	
	//회원가입 페이지 이동
			@RequestMapping(value = "join", method = RequestMethod.GET)
			public void joinGET() {
				logger.info("회원가입 페이지 진입");
			}
		
		
	//회원가입
		@RequestMapping(value="/join", method=RequestMethod.POST)
		public String joinPOST(MemberVO member) throws Exception{
			
			logger.info("join 진입");
			
			// 회원가입 서비스 실행
			memberservice.memberJoin(member);
			
			logger.info("join Service 성공");
			
			return "redirect:/main";
			
		}
		
		
	// 아이디 중복 검사
		@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
		@ResponseBody
		public String memberIdChkPOST(String userid) throws Exception{
			
			//logger.info("memberIdChk() 진입");
			logger.info("memberIdChk() 진입");
			
			int result = memberservice.idCheck(userid);
			
			logger.info("결과값 = " + result);
			
			if(result != 0) {
				
				return "fail";	// 중복 아이디가 존재
				
			} else {
				
				return "success";	// 중복 아이디 x
				
			}	
			
		} // memberIdChkPOST() 종료	
		


		/* 로그인 */
		@RequestMapping(value="login" , method=RequestMethod.POST)
		public String loginPOST(HttpServletRequest request, HttpServletResponse response, MemberVO member,
                @RequestParam(name = "rememberMe", required = false) Boolean rememberMe,
                RedirectAttributes rttr) throws Exception {
			
				HttpSession session = request.getSession();
				MemberVO lvo = memberservice.memberLogin(member);
				
				if (lvo == null) { // 일치하지 않는 아이디, 비밀번호 입력 경우
				rttr.addFlashAttribute("msg", "아이디 또는 비밀번호를 잘못 입력하셨습니다.");
				return "redirect:/member/login";
				}
				
				session.setAttribute("member", lvo); // 일치하는 아이디, 비밀번호 경우 (로그인 성공)
				
				// 로그인 성공 시, ID 저장 여부를 확인하여 쿠키를 생성합니다.
		        if (rememberMe != null && rememberMe) {
		            Cookie cookie = new Cookie("rememberedId", member.getUserid());
		            cookie.setMaxAge(30 * 24 * 60 * 60); // 쿠키 유효기간: 30일 (초 단위로 설정)
		            cookie.setPath("/"); // 쿠키의 범위를 전체 웹사이트로 설정
		            response.addCookie(cookie); // 쿠키를 클라이언트에게 보내 저장하도록 합니다.
		        } else {
		            // 로그인 시 기억하기를 체크하지 않은 경우, 쿠키 값을 삭제합니다.
		            Cookie cookie = new Cookie("rememberedId", "");
		            cookie.setMaxAge(0); // 쿠키 유효기간을 0으로 설정하여 삭제합니다.
		            cookie.setPath("/");
		            response.addCookie(cookie);
		        }

		        // 로그인 성공 후 처리 (메인 페이지로 리다이렉트)
		        return "redirect:/main";
				}
			
		
		@RequestMapping(value = "/logout", method = RequestMethod.GET)
	    public String logout(HttpServletRequest request, HttpServletResponse response) {
			// 현재 세션을 가져옵니다.
	        HttpSession session = request.getSession(false);

	        if (session != null) {
	            // 세션을 무효화하여 로그아웃 처리합니다.
	            session.invalidate();
	        }

	        // 로그아웃 후 처리 (로그인 페이지로 리다이렉트)
	        return "redirect:/member/login";
	    }
		

}
