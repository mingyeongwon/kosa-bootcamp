package com.mycompany.springframework.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.dto.Ch15Account;
import com.mycompany.springframework.service.Ch15Service;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch15")
public class Ch15Controller {
	   @Resource
	   private Ch15Service service;
	   
	   @RequestMapping("/accountList")
	   public String content(Model model) {
	      log.info("실행");
	      
	      List<Ch15Account> list = service.getAccountList();
	      model.addAttribute("list", list);
	      
	      return "ch15/accountList";
	   }
	   
	   @PostMapping("/transfer")
	   public String transfer(int fromAno, int toAno, int amount) {
	      service.transfer(fromAno, toAno, amount);
	      return "redirect:/ch15/accountList";
	   }
}
