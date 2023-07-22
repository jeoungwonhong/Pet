package com.pet.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

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
	@RequestMapping(value = "adminmain", method = RequestMethod.GET)
	public void MainGET() {
		logger.info("adminmain");
	}
	
	//calculate 페이지 이동
	@RequestMapping(value = "calculate", method = RequestMethod.GET)
	public void CalculateGET() {
		logger.info("calculate");
	}
	
	//product 페이지 이동
	@RequestMapping(value = "product", method = RequestMethod.GET)
	public void ScmGET() {
		logger.info("scm페이지 진입");
	}
	
	//order 페이지 이동
	@RequestMapping(value = "order", method = RequestMethod.GET)
	public void OrderGET() {
		logger.info("order");
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
	//review 페이지 이동
	@RequestMapping(value = "review", method = RequestMethod.GET)
	public void ReviewGET() {
		logger.info("review");
	}
	
	
	
	
}
