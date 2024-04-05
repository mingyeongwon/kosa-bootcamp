package com.mycompany.springframework.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/")
public class HomeController {
	@RequestMapping("")
	public String index() {
		log.info("index() 실행1");
		log.info("index() 실행2");
		log.info("index() 실행3");
		return "home";
	}
}
