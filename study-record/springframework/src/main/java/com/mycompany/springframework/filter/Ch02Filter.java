package com.mycompany.springframework.filter;

import java.io.IOException;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;

import lombok.extern.slf4j.Slf4j;

@Slf4j
public class Ch02Filter implements Filter{

	@Override
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain)
			throws IOException, ServletException {
		
		// 전처리
		log.info("전처리 내용 실행");
		
		
		// 다음 필터로 넘기거나 DispatcherServlet
		chain.doFilter(request, response);
		
		// 후처리
		log.info("후처리 내용  실행");
	}

}
