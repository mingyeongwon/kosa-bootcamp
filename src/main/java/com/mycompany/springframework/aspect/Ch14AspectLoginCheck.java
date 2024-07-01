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
public class Ch14AspectLoginCheck {
  @Around("@annotation(com.mycompany.springframework.aspect.LoginCheck)")
  public Object method(ProceedingJoinPoint joinPoint) throws Throwable {
    // 전처리 공통 코드
    ServletRequestAttributes sra = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes(); 
    HttpServletRequest request = sra.getRequest();
    HttpSession session = request.getSession();
    
    String login = (String) session.getAttribute("login");
    
    if(login == null) {
        return "redirect:/ch07/sessionLoginForm";
    } else {      
        Object result = joinPoint.proceed();
        return result;
    }
    
  }
}
