package com.mycompany.springframework.service;

import javax.annotation.Resource;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.Ch12DaoInterface;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch12Service10 {
	@Value("${prop1}") private int field1;
	@Value("${prop2}") private double field2;
	@Value("${prop3}") private boolean field3;
	private String field4;

	@Value("${prop4}")
	public void setField4(String field4) {
		log.info("field1 : " + field1);
		log.info("field2 : " + field2);
		log.info("field3 : " + field3);
		log.info("field4 : " + field4);
		this.field4 = field4;
	}
}
