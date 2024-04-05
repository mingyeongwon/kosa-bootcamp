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
<<<<<<< HEAD
		log.info("index() 실행3");
		log.info("index() 실행5");
=======
		log.info("index() 실행4");
>>>>>>> branch 'master' of https://github.com/mingyeongwon/springframework
		return "home";
	}
}
