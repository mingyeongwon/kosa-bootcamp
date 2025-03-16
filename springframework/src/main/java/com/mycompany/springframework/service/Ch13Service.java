package com.mycompany.springframework.service;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mycompany.springframework.dao.mybatis.Ch13BoardDao;
import com.mycompany.springframework.dto.Ch13Board;
import com.mycompany.springframework.dto.Ch13Pager;

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
	
	public List<Ch13Board> getBoardList(Ch13Pager pager) {
		List<Ch13Board> boardList = boardDao.selectByPage(pager);
		return boardList;
	}
	
	public int getTotalRows() {
		int totalRows = boardDao.count();
		return totalRows;
	}

	public Ch13Board getBoard(int bno) {
		Ch13Board board = boardDao.selectByBno(bno);
		return board;
	}

	public byte[] getAttachData(int bno) {
		Ch13Board board = boardDao.selectAttachData(bno);
		return board.getBattachdata();
	}

	public void updateBoard(Ch13Board board) {
		int rowNum = boardDao.update(board);
	}

	public void removeBoard(int bno) {
		boardDao.deleteByBno(bno);
		
	}
}
