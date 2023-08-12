package com.pet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.MemberMapper;
import com.pet.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper membermapper;

	//회원가입
	@Override
	public void memberJoin(MemberVO member) throws Exception {
		membermapper.memberJoin(member);
		
	}
	
	/* 로그인 */
	public MemberVO memberLogin(MemberVO member) throws Exception{
		return membermapper.memberLogin(member);
	}
	
	//아이디 중복검사
	@Override
	public int idCheck(String userid) throws Exception {
		return membermapper.idCheck(userid);
	}
	
	//아이디 찾기
	@Override
	public MemberVO memberIdSearch(MemberVO searchVO) {
		return membermapper.memberIdSearch(searchVO);
	}
	
	//비밀번호 찾기
	@Override
	public MemberVO memberPwdSearch(MemberVO searchVO) {
		return membermapper.memberPwdSearch(searchVO);
	}
	
	//구글 회원가입
	@Override
	public void joinMemberbyGoogle(MemberVO member) {
		membermapper.memberJoin(member);
	}
	
	//구글로그인
	@Override
	public MemberVO loginMemberbyGoogle(MemberVO member) {
		return membermapper.memberLogin(member);
	}
	/*
	 * //구글 로그인
	 * 
	 * @Override public MemberVO loginMemberbyGoogle(MemberVO member) {
	 * 
	 * try {
	 * 
	 * } catch (Exception e) { e.printStackTrace();
	 * 
	 * // TODO: handle exception } }
	 */
}
