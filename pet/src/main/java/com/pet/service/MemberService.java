package com.pet.service;

import com.pet.model.MemberVO;

public interface MemberService {

	//회원가입
	public void memberJoin(MemberVO member) throws Exception;
	
	
	//로그인
	public MemberVO memberLogin(MemberVO member) throws Exception;
	
	
	// 아이디 중복 검사
	public int idCheck(String userid) throws Exception;
	
	// 아이디 찾기
	MemberVO memberIdSearch(MemberVO searchVO);
	
	// 비밀번호 찾기
	MemberVO memberPwdSearch(MemberVO searchVO);
	
	//구글로그인
	public MemberVO loginMemberbyGoogle(MemberVO member);
	
	//구글회원가입
	public void joinMemberbyGoogle(MemberVO member);
	
}
