package com.pet.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.model.ReservationVO;

@Service
public class SCMServicelmpl implements SCMService {
	
	@Autowired
	SCMService scmservice;
	
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

}
