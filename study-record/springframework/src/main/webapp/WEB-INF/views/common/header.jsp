<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<nav class="navbar navbar-expand-sm bg-dark navbar-dark">
  <div class="container-fluid">
    <a class="navbar-brand" href="/springframework">
      <img src="${pageContext.request.contextPath}/resources/image/logo-spring.png"style="width:40px;" class="rounded-pill">
      <span class="align-middle">전자정부프레임워크(Spring Framework)</span> 
    </a>
    <div>
<%--     	<c:if test="${login=='success'}">
    		<a href="${pageContext.request.contextPath}/ch07/sessionLogout" class="btn btn-success btn-sm">로그아웃</a>
    	</c:if>
    	<c:if test="${login!='success'}">
    		<a href="${pageContext.request.contextPath}/ch07/sessionLoginForm" class="btn btn-success btn-sm">로그인</a>
    	</c:if> --%>
    	
    	<sec:authorize access="isAnonymous()">
    		<a href="${pageContext.request.contextPath}/ch17/loginForm" class="btn btn-success btn-sm">로그인</a>
    	</sec:authorize>
    	
    	<sec:authorize access="isAuthenticated()">
    		<%-- 사이트간 요청 위조 방지 설정이 비활성화되어 있을 경우 get 방식으로만 요청 가능 --%>
    		<b class="text-white me-2">
    			<sec:authentication property="principal.username"/>
    		</b>
    		<a href="${pageContext.request.contextPath}/logout" class="btn btn-success btn-sm">로그아웃</a>
    		
    		<%-- 사이트간 요청 위조 방지 설정이 활성화되어 있을 경우 post 방식으로만 요청 가능 --%>
<%--     		<form method="post" action="${pageContext.request.contextPath}/logout">
    			<input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
    			<button type="submit" class="btn btn-success btn-sm">로그아웃</button>
    		</form> --%>
    	</sec:authorize>
    	
    	
    </div>
  </div>
</nav>