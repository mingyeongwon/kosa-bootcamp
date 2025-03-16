package com.mycompany.htmlcssjs.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/javascript")
public class JavaScriptController {
	
	@RequestMapping("")
	public String index() {
		log.info("index() 실행");
		return "javascript/index";
	}
	
	@RequestMapping("/exam01_whereto")
	public String exam01Whereto() {
		log.info("exam01Whereto 실행");
		return "javascript/exam01_whereto";
	}
	
	@RequestMapping("/exam02_variables")
	public String exam02Variables() {
		log.info("exam02Variables 실행");
		return "javascript/exam02_variables";
	}
	
	@RequestMapping("/exam03_operations")
	public String exam03Operations() {
		log.info("exam03Operations 실행");
		return "javascript/exam03_operations";
	}
	
	@RequestMapping("/exam04_function")
	public String exam04Function() {
		log.info("exam04Function 실행");
		return "javascript/exam04_function";
	}
	
	@RequestMapping("/exam05_object")
	public String exam05Object() {
		log.info("exam05Object 실행");
		return "javascript/exam05_object";
	}
	
	@RequestMapping("/exam06_dynamic_field_method")
	public String exam06DynamicFieldMethod() {
		log.info("exam06DynamicFieldMethod 실행");
		return "javascript/exam06_dynamic_field_method";
	}
	
	@RequestMapping("/exam07_getter_setter")
	public String exam07GetterSetter() {
		log.info("exam07GetterSetter 실행");
		return "javascript/exam07_getter_setter";
	}
	
	@RequestMapping("/exam08_function_constructor")
	public String exam08FunctionConstructor() {
		log.info("exam08FunctionConstructor 실행");
		return "javascript/exam08_function_constructor";
	}
	
	@RequestMapping("/exam09_class")
	public String exam09Class() {
		log.info("exam09Class 실행");
		return "javascript/exam09_class";
	}
	
	@RequestMapping("/exam10_static")
	public String exam10Static() {
		log.info("exam10Static 실행");
		return "javascript/exam10_static";
	}
	
	@RequestMapping("/exam11_inheritance")
	public String exam11Inheritance() {
		log.info("exam11Inheritance 실행");
		return "javascript/exam11_inheritance";
	}
	
	@RequestMapping("/exam12_destructuring_assignment")
	public String exam12DestructuringAssignment() {
		log.info("exam12DestructuringAssignment 실행");
		return "javascript/exam12_destructuring_assignment";
	}
	
	@RequestMapping("/exam13_string")
	public String exam13String() {
		log.info("exam13String 실행");
		return "javascript/exam13_string";
	}
	
	@RequestMapping("/exam14_date")
	public String exam14Date() {
		log.info("exam14Date 실행");
		return "javascript/exam14_date";
	}
	
	@RequestMapping("/exam15_math")
	public String exam15Math() {
		log.info("exam15Math 실행");
		return "javascript/exam15_math";
	}
	
	@RequestMapping("/exam16_global_fun")
	public String exam16GlobalFun() {
		log.info("exam16GlobalFun 실행");
		return "javascript/exam16_global_fun";
	}
	
	@RequestMapping("/exam17_json")
	public String exam17Json() {
		log.info("exam17Json 실행");
		return "javascript/exam17_json";
	}
	
	@RequestMapping("/exam18_regexp")
	public String exam18Regexp() {
		log.info("exam18Regexp 실행");
		return "javascript/exam18_regexp";
	}
	
	@RequestMapping("/exam19_event")
	public String exam19Event() {
		log.info("exam19Event 실행");
		return "javascript/exam19_event";
	}
	
	@RequestMapping("/exam20_try_catch")
	public String exam20TryCatch() {
		log.info("exam20TryCatch 실행");
		return "javascript/exam20_try_catch";
	}
	
	@RequestMapping("/exam21_array")
	public String exam21Array() {
		log.info("exam21Array 실행");
		return "javascript/exam21_array";
	}
}
