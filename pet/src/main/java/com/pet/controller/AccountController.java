package com.pet.controller;

import javax.servlet.http.HttpServletRequest;

import org.apache.commons.lang.RandomStringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.pet.model.MemberVO;
import com.pet.service.MemberService;

@Controller
public class AccountController {
	
	@Autowired
	private MemberService memberservice;
	
	@RequestMapping(value="/member/search_id", method=RequestMethod.GET)
	public String search_id(HttpServletRequest request, Model model, MemberVO searchVO) {
		return "/member/search_id";
	}
	
	@RequestMapping(value="/member/search_result_id")
	public String search_result_id(HttpServletRequest request, Model model,
			@RequestParam(required = true, value = "username") String username,
			@RequestParam(required = true, value = "tel") String tel,
			MemberVO searchVO){
		try {
			searchVO.setUsername(username);
			searchVO.setTel(tel);
			MemberVO memberSearch = memberservice.memberIdSearch(searchVO);
			
			model.addAttribute("searchVO", memberSearch);
			
		}catch (Exception e) {
			System.out.println(e.toString());
			model.addAttribute("msg", "오류가 발생했습니다.");
		}
		
		return "/member/search_result_id";
	}
			
	
	@RequestMapping(value="/member/search_pwd", method=RequestMethod.GET)
	public String search_pwd(HttpServletRequest request, Model model, MemberVO searchVO) {
		return "/member/search_pwd";
	}
	
	@RequestMapping(value="/member/search_result_pwd")
	public String search_result_pwd(HttpServletRequest request, Model model,
			@RequestParam(required = true, value = "userid") String userid,
			@RequestParam(required = true, value = "username") String username,
			@RequestParam(required = true, value = "tel") String tel,
			MemberVO searchVO){
		try {
			searchVO.setUserid(userid);
			searchVO.setUsername(username);
			searchVO.setTel(tel);
			MemberVO memberSearch = memberservice.memberPwdSearch(searchVO);
			
			model.addAttribute("searchVO", memberSearch);
			
		}catch (Exception e) {
			System.out.println(e.toString());
			model.addAttribute("msg", "오류가 발생했습니다.");
		}
		
		return "/member/search_result_pwd";
	}
	

}
