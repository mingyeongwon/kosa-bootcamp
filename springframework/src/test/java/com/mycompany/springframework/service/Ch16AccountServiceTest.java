package com.mycompany.springframework.service;

import java.util.List;
import org.junit.Assert;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;
import com.mycompany.springframework.Ch16JUnitTest;
import com.mycompany.springframework.dto.Ch15Account;

public class Ch16AccountServiceTest extends Ch16JUnitTest{
  @Autowired
  private Ch15Service ch15Service;
  
  @Test
  public void testTransfer() {
    List<Ch15Account> list1 = ch15Service.getAccountList();
    Assert.assertEquals(2, list1.size());
    
    Ch15Account from1 = list1.get(0);
    Ch15Account to1 = list1.get(1);
    
    int amount = 300000;
    
    ch15Service.transfer(from1.getAno(), to1.getAno(), amount);
    
    List<Ch15Account> list2 = ch15Service.getAccountList();
    Ch15Account from2 = list2.get(0);
    Ch15Account to2 = list2.get(1);
    
    Assert.assertEquals(from1.getBalance()-amount, from2.getBalance());
    Assert.assertEquals(to1.getBalance()+amount, to2.getBalance());
  }
}
