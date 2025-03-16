package com.mycompany.springframework.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.Ch12Dao3;
import com.mycompany.springframework.dao.Ch12Dao4;
import com.mycompany.springframework.dao.Ch12Dao5;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch12Service8 {
	@Autowired
	// @Resource
	private Ch12Dao3 ch12Dao3; // 필드 주입
	private Ch12Dao4 Ch12Dao4;
	private Ch12Dao5 Ch12Dao5;
	
	@Autowired
	public Ch12Service8(Ch12Dao4 ch12Dao4) {
		log.info("실행");
		this.Ch12Dao4 = Ch12Dao4; // 생성자 주입
	}
	
	@Autowired
	// @Resource
	public void setCh12Dao5(Ch12Dao5 ch12Dao5) { // setter 주입
		log.info("실행");
		Ch12Dao5 = ch12Dao5;
	}
}
