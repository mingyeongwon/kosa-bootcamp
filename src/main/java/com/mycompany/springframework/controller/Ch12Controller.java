package com.mycompany.springframework.controller;

import java.io.IOException;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.exception.Ch10CustomException;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch12")
public class Ch12Controller {
	@GetMapping("/createBeanByXml")
	public String createBeanByXml(Model model) {
		log.info("실행");
		model.addAttribute("chNum", "ch12");
		return "ch12/createBeanByXml";
	}
	
	@GetMapping("/createBeanByAnnotation")
	public String createBeanByAnnotation(Model model) {
		log.info("실행");
		model.addAttribute("chNum", "ch12");
		return "ch12/createBeanByAnnotation";
	}
	
	@GetMapping("/diByXml")
	public String diByXml(Model model) {
		log.info("실행");
		model.addAttribute("chNum", "ch12");
		return "ch12/diByXml";
	}
	
	@GetMapping("/diByAnnotation")
	public String diByAnnotation(Model model) {
		log.info("실행");
		model.addAttribute("chNum", "ch12");
		return "ch12/diByAnnotation";
	}
}
