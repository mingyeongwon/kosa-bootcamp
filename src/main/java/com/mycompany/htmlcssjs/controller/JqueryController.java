package com.mycompany.htmlcssjs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/jquery")
public class JqueryController {
	@RequestMapping("")
	public String index() {
		log.info("index() 실행");
		return "jquery/index";
	}
	
	@RequestMapping("exam01_jquery_object")
	public String exam01JqueryObject() {
		log.info("exam01JqueryObject() 실행");
		return "jquery/exam01_jquery_object";
	}
	
	@RequestMapping("exam02_jquery_find_element")
	public String exam02JqueryFindElement() {
		log.info("exam02JqueryFindElement() 실행");
		return "jquery/exam02_jquery_find_element";
	}
	
	@RequestMapping("exam03_jquery_element_manipulation")
	public String exam03JqueryElementManipulation() {
		log.info("exam03JqueryElementManipulation() 실행");
		return "jquery/exam03_jquery_element_manipulation";
	}
	
	@RequestMapping("exam04_jquery_form_validate")
	public String exam04JqueryFormValidate() {
		log.info("exam04JqueryFormValidate() 실행");
		return "jquery/exam04_jquery_form_validate";
	}
	
	@RequestMapping("exam05_jquery_ready_event")
	public String exam05JqueryReadyEvent() {
		log.info("exam05JqueryReadyEvent() 실행");
		return "jquery/exam05_jquery_ready_event";
	}
}
