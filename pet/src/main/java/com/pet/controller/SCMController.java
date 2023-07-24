package com.pet.controller;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.pet.model.ReservationVO;
import com.pet.model.ScmCalculate;
import com.pet.service.SCMService;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/scm")
public class SCMController {
	
	private static final Logger logger = LoggerFactory.getLogger(SCMController.class);
	
	@Autowired
	private SCMService scmservice;
	

	//main 페이지 이동
	@RequestMapping(value = "scmJoin", method = RequestMethod.GET)
	public void ScmJoinGET() {
		logger.info("scmJoin");
	}
	
	//main 페이지 이동
	@RequestMapping(value = "adminmain", method = RequestMethod.GET)
	public void MainGET() {
		logger.info("adminmain");
	}
	
	//calculate 페이지 이동
	@RequestMapping(value = "calculate", method = RequestMethod.GET)
	public void CalculateGET(ScmCalculate cal, Model model) throws Exception {
		logger.info("calculate 접속......." + cal);
		
		/* 목록 출력 데이터 */
		List list = SCMService.scmCalGetList(cal);
		
		model.addAttribute("list", list);
	}
	
	//product 페이지 이동
	@RequestMapping(value = "product", method = RequestMethod.GET)
	public void ScmGET() {
		logger.info("scm페이지 진입");
	}
	
	//order 페이지 이동
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public void OrderGET() {
		logger.info("order 페이지 진입");
	}
	
	//order 페이지 컨디션 바꿔주는 작업
	@ResponseBody
	@RequestMapping(value = "/reservationOrder", method = RequestMethod.GET)
	public void reservationOrder(HttpServletRequest req) {
		logger.info("order 페이지 진입");
		String businesscode = req.getParameter("businesscode");
		int condition = Integer.parseInt(req.getParameter("condition"));
		ReservationVO vo = new ReservationVO();
		
					
	}
	
	
	//check 페이지 이동
	@RequestMapping(value = "check", method = RequestMethod.GET)
	public void CheckGET() {
		logger.info("check");
	}
	//completion 페이지 이동
	@RequestMapping(value = "completion", method = RequestMethod.GET)
	public void CompletionGET() {
		logger.info("completion");
	}
	//QnA 페이지 이동	
	@RequestMapping(value = "q&a", method = RequestMethod.GET)
	public void QnAGET() {
		logger.info("q&a");
	}
	//QnA Info페이지 이동
	@RequestMapping(value = "q&a2", method = RequestMethod.GET)
	public void QnA2GET() {
		logger.info("q&a2");
	}
	
	// review 목록 페이지 이동
    @GetMapping("/review")
    // => @RequestMapping(value="review", method=RequestMethod.GET)
    public void ReviewGET(Model model) {
        
    	logger.info("게시판 목록 페이지 진입");
        
        model.addAttribute("review", scmservice.getList());
        
    }
	/*
	//review 페이지 이동
	@RequestMapping(value = "review", method = RequestMethod.GET)
	public void ReviewGET() {
		logger.info("review");
	}
	*/
	//review Info 페이지 이동
	@RequestMapping(value = "review2", method = RequestMethod.GET)
	public void Review2GET() {
		logger.info("review2");
	}
	
	
	
	
}
