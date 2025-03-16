package com.mycompany.springframework.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.annotation.Secured;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.dto.Ch17Member;
import com.mycompany.springframework.security.Ch17UserDetails;
import com.mycompany.springframework.service.Ch17Service;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch17")
public class Ch17Controller {
	@Autowired
	private Ch17Service service;
	
	@GetMapping("/loginForm")
	public String loginForm() {
		return "ch17/loginForm";
	}

	@Secured("ROLE_ADMIN")
	@GetMapping("/admin/page")
	public String adminPage() {
		return "ch17/admin/page";
	}

	@Secured({"ROLE_MANAGER"}) // 여러 개면 중괄호 붙이고 , 사용해서 작성하기
	@GetMapping("/manager/page")
	public String managerPage() {
		return "ch17/manager/page";
	}

	@Secured("ROLE_USER")
	@GetMapping("/user/page")
	public String userPage() {
		return "ch17/user/page";
	}

	@RequestMapping("/error403")
	public String error403() {
		return "ch17/error403";
	}
	
	@GetMapping("/userInfo")
	public String userInfo(Authentication authentication) {
		log.info("실행");
		// 사용자 아이디 얻기
		String mid = authentication.getName();

		// 사용자 아이디 및 이메일 얻기
		Ch17UserDetails ch17UserDetails = (Ch17UserDetails) authentication.getPrincipal();
		Ch17Member member = ch17UserDetails.getMember();
		String mname = member.getMname();
		String memail = member.getMemail();

		// 사용자 권한(롤) 이름 얻기
		List<String> authorityList = new ArrayList<>();
		for (GrantedAuthority authority : authentication.getAuthorities()) {
			authorityList.add(authority.getAuthority());
		}

		log.info("mid" + mid);
		log.info("mname" + mname);
		log.info("memail" + memail);
		log.info("mrole" + authorityList);

		return "redirect:/";
	}
	
	@GetMapping("/authorityCheck")
	public String authorityCheck() {
		return "ch17/authorityCheck";
	}
	
	@GetMapping("/joinForm")
	public String joinForm() {
		return "ch17/joinForm";
	}
	
	@PostMapping("/join")
	public String join(Ch17Member member) {
		service.join(member);
		return "redirect:/ch17/loginForm";
	}

}
