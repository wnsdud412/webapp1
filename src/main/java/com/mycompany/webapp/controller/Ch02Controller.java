package com.mycompany.webapp.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("/ch02")
public class Ch02Controller {
	private static final Logger logger = LoggerFactory.getLogger(Ch02Controller.class);
	
	@RequestMapping("/content")
	public String content() {
		logger.info("실행");
		return "ch02/content";
	}

	/* @RequestMapping("/request1") */
	@RequestMapping(value="/getMethod", method=RequestMethod.GET)
	/* @RequestMapping(value="/request1", method=RequestMethod.POST) */
	public String getMethod() {
		logger.info("getMethod 실행");
		return "ch02/content";
	}
	@RequestMapping(value="/postMethod", method=RequestMethod.POST)
	public String posttMethod() {
		logger.info("posttMethod 실행");
		return "ch02/content";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.GET)
	public String joinForm() {
		logger.info("회원가입 양식을 보냄");
		return "ch02/joinForm";
	}
	
	@RequestMapping(value="/join", method=RequestMethod.POST)
	public String join() {
		logger.info("회원가입 처리함");
		return "ch02/content";
	}
	@RequestMapping(value="/joinAsync", method=RequestMethod.GET)
	public String joinFormAsync() {
		logger.info("회원가입 양식을 보냄");
		return "ch02/joinFormAsync";
	}	
}
