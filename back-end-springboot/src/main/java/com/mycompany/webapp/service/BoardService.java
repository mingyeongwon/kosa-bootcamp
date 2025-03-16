package com.mycompany.webapp.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.mycompany.webapp.dao.BoardDao;
import com.mycompany.webapp.dto.Board;
import com.mycompany.webapp.dto.Pager;

@Service
public class BoardService {
   @Autowired
   private BoardDao boardsDao;
   
   public int insert(Board board) {
      return boardsDao.insert(board);
   }

   public int getCount() {
      return boardsDao.count();
   }

   public List<Board> getList(Pager pager) {
      return boardsDao.selectByPage(pager);
   }
   
   public Board getBoard(int bno) {
	  Board board = boardsDao.selectByBno(bno);
	  boardsDao.updateBhitcount(bno);
      return board;
   }

   public int update(Board board) {
      return boardsDao.updateByBno(board);
   }

   public int delete(int bno) {
      return boardsDao.deleteByBno(bno);
   }
   
   public int addHitcount(int bno) {
      return boardsDao.updateBhitcount(bno);
   }
}