package com.mycompany.springframework.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.web.method.HandlerMethod;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch02AuthInterceptor implements HandlerInterceptor{
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		log.info("preHandle() 실행");
		
		// 요청 매핑 메소드 참조 객체
		HandlerMethod handlerMethod = (HandlerMethod) handler;
		
		// 요청 매핑 메소드에 @Auth 붙어있지 않다면 null
		// 붙어있으면 not null
		Auth auth = handlerMethod.getMethodAnnotation(Auth.class);
		if(auth == null) {
			// 로그인 필요 X -> 요청 매핑 메소드 실행
			return true;
		} else {
			// 로그인 필요 -> 로그인 검사 
			boolean loginStatus = true;
			if(loginStatus) {
				// 요청 매핑 메소드 실행
				return true;
			} else {
				// 홈으로 강제 이동
				// request,getContextPath() => /springframework
				response.sendRedirect(request.getContextPath());
				// 요청 매핑 메소드 실행 X
				return false;
			}
		}
		
	}

}
