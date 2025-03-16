package com.mycompany.springframework.service;

import com.mycompany.springframework.dao.Ch12Dao1;
import com.mycompany.springframework.dao.Ch12Dao2;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch12Service6 {
	private Ch12Dao1 ch12Dao1;
	private Ch12Dao2 ch12Dao2;
	
	public Ch12Service6(Ch12Dao1 ch12Dao1, Ch12Dao2 ch12Dao2) {
		log.info("실행");
		this.ch12Dao1 = ch12Dao1;
		this.ch12Dao2 = ch12Dao2;
	}
}
