package com.pet.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.model.ReservationVO;
import com.pet.model.ReviewVO;

@Service
public class SCMServicelmpl implements SCMService {
	
	@Autowired
	SCMService scmservice;
	
	//예약
	@Override
	public void reservation(ReservationVO reservation) throws Exception{
		scmservice.reservation(reservation);
	}
	
	//예약 order condition변경
	@Override
	public int reservationOrder(String businesscode) throws Exception{
		return scmservice.reservationOrder(businesscode);
	}
	
	//예약 check condition변경
	@Override
	public int reservationCheck(String businesscode) throws Exception{
		return scmservice.reservationCheck(businesscode);
	}
	
	//예약 completion condition변경
	@Override
	public int reservationCompletion(String businesscode) throws Exception{
		return scmservice.reservationCompletion(businesscode);
	}
	
	// 리뷰 상세페이지
	@Override
    public ReviewVO info(Integer num) throws Exception {
        return scmservice.info(num);
    }
	
	// 리뷰 리스트 
	@Override
	public List<ReviewVO> listAll() throws Exception {
        return scmservice.listAll();
    }
    
}
