package com.mycompany.springframework.aspect;

import org.aspectj.lang.annotation.AfterReturning;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Slf4j
public class Ch14AspectAfterReturning {
  @AfterReturning(
      pointcut = "execution(public * com.mycompany.springframework.controller.Ch14Controller.afterReturning(..))",
      returning = "returnValue")
  public void method(String returnValue) {
    log.info("후처리 코드 실행, 리턴값 처리 : " + returnValue);
  }
}
