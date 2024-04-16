package com.mycompany.springframework.controller;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mycompany.springframework.dto.Ch06Cart;
import com.mycompany.springframework.dto.Ch06Member;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
@RequestMapping("/ch06")
public class Ch06Controller {
	@GetMapping("/forward")
	public String forward(Model model, HttpServletRequest request) {
		
		// 데이터 생성
		Ch06Member member = new Ch06Member();
		member.setMid("spring");
		member.setMname("김벚꽃");
		member.setMemail("kim@naver.com");
		
		// request 범위에 객체 저장 
		// forward할 때까지 계속 사용할 수 있는 범위
		// 응답이 전송되면 request 범위는 사라짐 
		model.addAttribute("chNum", "ch06");
		model.addAttribute("member1", member);
		request.setAttribute("member2", member);
		
		return "ch06/forward";
	}
	
	@GetMapping("/redirect")
	public String redirect(HttpSession session, Model model) {
		log.info("실행");
		
		// 데이터 생성
		List<String> items = new ArrayList<>();
		items.add("상품 1");
		items.add("상품 2");
		items.add("상품 3");
		
		Ch06Cart cart = new Ch06Cart();
		cart.setItems(items);
		
		// session 범위에 객체 저장
		// 동일한 client (브라우저)가 사용할 수 있는 범위
		session.setAttribute("cart", cart);
		
		model.addAttribute("chNum", "ch06");
		return "redirect:/ch06/sessionData";
	}
	
	@GetMapping("/sessionData")
	public String sessionData(HttpSession session, Model model) {
		log.info("실행");
		
		// session 범위에 저장된 객체 가져오기
		Ch06Cart cart = (Ch06Cart) session.getAttribute("cart"); // 타입 변환
		if(cart != null) {
			for(String item : cart.getItems()) {
				log.info(item);
			}			
		}
		
		model.addAttribute("chNum", "ch06");
		return "ch06/sessionData";
	}
}
