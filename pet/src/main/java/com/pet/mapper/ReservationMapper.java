package com.pet.mapper;

import com.pet.model.ReservationVO;

public interface ReservationMapper {

	//예약
	public void reservation(ReservationVO reservaion);
	
	//예약 컨디션 변경
	public int reservationCon(int condition);
	
}
