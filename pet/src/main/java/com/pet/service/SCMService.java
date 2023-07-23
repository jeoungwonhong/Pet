package com.pet.service;

import java.util.List;

import com.pet.model.ReservationVO;
import com.pet.model.ReviewVO;

public interface SCMService {

	//예약
	public void reservation(ReservationVO reservation) throws Exception;
	
	//예약 condition 변경
	public int reservationCon(int condition) throws Exception;
	
	// 리뷰 목록
    public List<ReviewVO> getList();
}
