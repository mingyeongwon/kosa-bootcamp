package com.mycompany.springframework.controller;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import lombok.extern.slf4j.Slf4j;

@Controller
@RequestMapping("/ch01")
@Slf4j
public class Ch01Controller {
	private static final Logger LOGGER  = LoggerFactory.getLogger(Ch01Controller.class); //상수는 대문자가 관례


	@RequestMapping("/content")
	public String content(String chNum, Model model) {
	LOGGER.info("content() 실행");
	model.addAttribute("chNum", chNum);
    return "ch01/content";
  }
}
