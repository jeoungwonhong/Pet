package com.pet.mapper;

import java.util.List;

import com.pet.model.ReservationVO;

public interface ReservationMapper {

	//예약자 목록
	public void reservation(ReservationVO reservaion);
	
	//order 페이지 목록
	public int reservationOrder(String businesscode);
	
	//check 페이지 목록
	public int reservationCheck(String businesscode);
			
	//completion 페이지 목록
	public int reservationCompletion(String businesscode);
		
	
}
