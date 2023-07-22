package com.pet.service;

import com.pet.model.ReservationVO;

public interface SCMService {

	//예약
	public void reservation(ReservationVO reservation) throws Exception;
	
	//예약 condition 변경
	public int reservationCon(int condition) throws Exception;

}
