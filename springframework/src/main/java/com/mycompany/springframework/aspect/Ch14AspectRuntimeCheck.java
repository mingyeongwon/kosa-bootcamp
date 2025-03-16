package com.mycompany.springframework.aspect;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import org.aspectj.lang.ProceedingJoinPoint;
import org.aspectj.lang.annotation.Around;
import org.aspectj.lang.annotation.Aspect;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.ServletRequestAttributes;
import lombok.extern.slf4j.Slf4j;

@Component
@Aspect
@Slf4j
public class Ch14AspectRuntimeCheck {
  @Around("@annotation(com.mycompany.springframework.aspect.RuntimeCheck)")
  public Object method(ProceedingJoinPoint joinPoint) throws Throwable {
    // 전처리 공통 코드
    long start = System.nanoTime();
    
    Object result = joinPoint.proceed();
    
    // 후처리 공통 코드
    long end = System.nanoTime();
    long howLong = end - start;
    
    System.out.println("메소드 실행 시간 : " + howLong + "ns");
    
    ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes(); 
    HttpServletRequest request = sra.getRequest();
    request.setAttribute("methodName", joinPoint.getSignature().toShortString());
    request.setAttribute("howLong", howLong);
    
    return result;
  }
}
