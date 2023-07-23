package com.pet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.ReviewMapper;
import com.pet.model.ReservationVO;
import com.pet.model.ReviewVO;

@Service
public class SCMServicelmpl implements SCMService {
	
	@Autowired
	SCMService scmservice;
	
	@Autowired
	ReviewMapper reMapper;
	
	//예약
	@Override
	public void reservation(ReservationVO reservation) throws Exception{
		scmservice.reservation(reservation);
	}
	
	//예약 condition변경
	@Override
	public int reservationCon(int condition) throws Exception{
		return scmservice.reservationCon(condition);
	}

	// 리뷰 목록
	@Override
	public List<ReviewVO> getList() {
		return reMapper.getList();
	}
}
