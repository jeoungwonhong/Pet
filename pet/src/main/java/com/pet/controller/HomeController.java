package com.pet.controller;

import java.text.DateFormat;
import java.util.Date;
import java.util.Locale;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	/**
	 * Simply selects the home view to render by returning its name.
	 */
	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		model.addAttribute("serverTime", formattedDate );
		
		return "home";
	}
	
	//메핑하는 법, 컨트롤러에 아래처럼 해당 페이지 걸어줌 info는 console창에 나타나는것임
	//처음 run as하면 localhost:8080 페이지만 로딩되는데(home.jsp임) 거기서 localhost:8080/main 입력하면 메인으로 이동하고
	//여기서 로그인 누르면 localhost:8080/member/login 이렇게 또 이동됨 이건 membercontroller에 있음
	@RequestMapping(value = "/main", method = RequestMethod.GET)
	public void mainPageGET() {
		
		logger.info("메인 페이지 진입");
		
	}
	
}
