package com.pet.service;

import java.util.List;

import com.pet.model.PayVO;
import com.pet.model.ReservationVO;
import com.pet.model.ReviewVO;
import com.pet.model.ScmCalculate;

public interface SCMService {

	//예약
	public void reservation(ReservationVO reservation) throws Exception;
	
	//order 페이지 목록
	public int reservationOrder(String businesscode) throws Exception;
	
	//check 페이지 목록
	public int reservationCheck(String businesscode) throws Exception;
				
	//completion 페이지 목록
	public int reservationCompletion(String businesscode) throws Exception;
		
	// 리뷰 리스트 
    public List<ReviewVO> getList();


	// 정산 관리 리스트
	public static List<PayVO> scmCalGetList(ScmCalculate cal) throws Exception {
		// TODO Auto-generated method stub
		return null;
	}

}
