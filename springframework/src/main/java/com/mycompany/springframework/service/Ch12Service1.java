package com.mycompany.springframework.service;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch12Service1 {
	// 기본 생성자
	public Ch12Service1() {
		log.info("실행");
	}
	
	// 인스턴스 메소드
	public Ch12Service1 getObject() {
		log.info("실행");
		return new Ch12Service1();
	}
}
