package com.pet.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
@RequestMapping(value="/scm")
public class SCMController {
	
	private static final Logger logger = LoggerFactory.getLogger(SCMController.class);
	
	@RequestMapping(value = "product", method = RequestMethod.GET)
	public void ScmGET() {
		logger.info("scm페이지 진입");
	}
	
}
