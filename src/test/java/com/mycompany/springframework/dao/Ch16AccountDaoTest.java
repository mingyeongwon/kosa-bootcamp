package com.mycompany.springframework.dao;

import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.mycompany.springframework.Ch16JUnitTest;
import com.mycompany.springframework.dao.mybatis.Ch13AccountDao;
import com.mycompany.springframework.dto.Ch15Account;

public class Ch16AccountDaoTest extends Ch16JUnitTest {
  @Autowired
  private Ch13AccountDao accountDao;
  
  @Test
  public void testSelectAll() {
    List<Ch15Account> list = accountDao.selectAll();
    Assert.assertEquals(2, list.size());
    for(Ch15Account account: list) {
      Assert.assertNotNull(account);
    }
  }
  
  @Test
  public void testSelectByBno() {
    Ch15Account account = accountDao.selectByAno(1);
    Assert.assertNotNull(account);
    Assert.assertEquals(1, account.getAno());
    Assert.assertEquals("홍길동", account.getOwner());
    Assert.assertEquals(1000000, account.getBalance());
  }
  
  @Test
  public void testUpdateBalance() {
    Ch15Account account = accountDao.selectByAno(1);
    int oldBalance = account.getBalance();
    int newBalance = oldBalance - 300000;
    account.setBalance(newBalance);
    accountDao.updateBalance(account);
    
    account = accountDao.selectByAno(1);
    Assert.assertEquals(newBalance, account.getBalance());
  }
}
