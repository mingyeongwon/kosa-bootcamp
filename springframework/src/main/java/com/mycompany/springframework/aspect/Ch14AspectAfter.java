package com.mycompany.springframework.aspect;

import org.aspectj.lang.annotation.After;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.core.annotation.Order;
import org.springframework.stereotype.Component;
import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Slf4j
public class Ch14AspectAfter {
  @After("execution(public * com.mycompany.springframework.controller.Ch14Controller.after(..))")
  public void method() {
    log.info("후처리 코드 실행");
  }
}
