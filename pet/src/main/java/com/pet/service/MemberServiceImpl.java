package com.pet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.MemberMapper;
import com.pet.model.MemberVO;

@Service
public class MemberServiceImpl implements MemberService{

	@Autowired
	MemberMapper membermapper;

	@Override
	public void memberJoin(MemberVO member) throws Exception {
		
		membermapper.memberJoin(member);
		
	}
	
	/* 로그인 */
	public MemberVO memberLogin(MemberVO member) throws Exception{
		return membermapper.memberLogin(member);
	}
	
	
}
