package com.pet.service;

import java.util.List;

import com.pet.model.PayVO;
import com.pet.model.ReservationVO;
import com.pet.model.ReviewVO;
import com.pet.model.ScmCalculate;

public interface SCMService {

	//예약
	public void reservation(ReservationVO reservation) throws Exception;
	
	//예약 condition 변경
	public int reservationCon(int condition) throws Exception;
	
	// 리뷰 상세페이지
	public ReviewVO info(Integer num) throws Exception;
	
	// 리뷰 리스트 
	public List<ReviewVO> listAll() throws Exception;
	
	// 정산 관리 리스트
	public static List<PayVO> scmCalGetList(ScmCalculate cal) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}
}
