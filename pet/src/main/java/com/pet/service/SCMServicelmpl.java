package com.pet.service;

import java.util.List;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.pet.mapper.ScmCalculateMapper;
import com.pet.model.PayVO;
import com.pet.model.ReservationVO;
import com.pet.model.ReviewVO;
import com.pet.model.ScmCalculate;

@Service
public class SCMServicelmpl implements SCMService {
	
	private static final Logger log = LoggerFactory.getLogger(SCMServicelmpl.class);
	
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
	
	// 정산관리 리스트
	public List<PayVO> scmCalGetList(ScmCalculate cal) throws Exception{
		log.info("(service)scmCalGetlist()....." + cal);
		
		return ScmCalculateMapper.scmCalGetList(cal);
	}
    
}
