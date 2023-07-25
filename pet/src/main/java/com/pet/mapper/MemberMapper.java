package com.pet.mapper;

import com.pet.model.MemberVO;

public interface MemberMapper {

	//회원가입
		public void memberJoin(MemberVO member);
	
	//로그인
		public MemberVO memberLogin(MemberVO member);

	// 아이디 중복 검사
		public int idCheck(String userid);
	
	// 아이디 찾기
		MemberVO memberIdSearch(MemberVO searchVO);
		
	// 비밀번호 찾기
		MemberVO memberPwdSearch(MemberVO searchVO);
}

