package com.mycompany.springframework.service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.mycompany.springframework.dao.mybatis.Ch13AccountDao;
import com.mycompany.springframework.dto.Ch15Account;

import lombok.extern.slf4j.Slf4j;

@Service
@Slf4j
public class Ch15Service {
	@Autowired
	private Ch13AccountDao accountDao;
	
	public List<Ch15Account> getAccountList() {
		List<Ch15Account> accountList = accountDao.selectAll();
		return accountList;
	}
	
	@Transactional
	public void transfer(int fromAno, int toAno, int amount) {
		// 출금 작업
		Ch15Account fromAccount = accountDao.selectByAno(fromAno);
		if(fromAccount == null) {
			throw new RuntimeException("출금 계좌 없음");
		}
		fromAccount.setBalance(fromAccount.getBalance() - amount);
		accountDao.updateBalance(fromAccount);
		
		// 입금 작업 
		Ch15Account toAccount = accountDao.selectByAno(toAno);
		if(toAccount == null) {
			throw new RuntimeException("입금 계좌 없음");
		}
		toAccount.setBalance(toAccount.getBalance() + amount);
		accountDao.updateBalance(toAccount);
	}
}
