package com.mycompany.htmlcssjs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/bootstrap")
public class BootstrapController {
	@RequestMapping("")
	public String index() {
		log.info("index() 실행");
		return "bootstrap/index";
	}
	
	@RequestMapping("/exam01_grid")
	public String exam01Grid() {
		log.info("exam01Grid() 실행");
		return "bootstrap/exam01_grid";
	}
	
	@RequestMapping("/exam02_typography")
	public String exam02Typography() {
		log.info("exam02Typography() 실행");
		return "bootstrap/exam02_typography";
	}
	
	@RequestMapping("/exam03_color")
	public String exam03Color() {
		log.info("exam03Color() 실행");
		return "bootstrap/exam03_color";
	}
	
	@RequestMapping("/exam04_spacing")
	public String exam04Spacing() {
		log.info("exam04Spacing() 실행");
		return "bootstrap/exam04_spacing";
	}
}
