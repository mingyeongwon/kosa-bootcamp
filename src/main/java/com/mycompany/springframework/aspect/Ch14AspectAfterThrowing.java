package com.mycompany.springframework.aspect;

import org.aspectj.lang.annotation.AfterThrowing;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Slf4j
public class Ch14AspectAfterThrowing {
  @AfterThrowing(
      pointcut = "execution(public * com.mycompany.springframework.controller.Ch14Controller.*(..))",
      throwing = "e")
  public void method(Throwable e) {
    log.info("후처리 코드 실행, 예외 이유 : " + e.getMessage());
  }
}
