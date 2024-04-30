package com.mycompany.springframework.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.mybatis.Ch13BoardDao;
import com.mycompany.springframework.dto.Ch13Board;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch13Service {
	@Resource
	private Ch13BoardDao boardDao;
	
	public void writeBoard(Ch13Board board) {
		// 비지니스 로직 처리
		int rowNum = boardDao.insert(board);
		log.info("rowNum: " + rowNum + ", bno: " + board.getBno());
	}
}
