<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<div class="accordion" id="accordionExample">
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch01'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseOne" aria-expanded="false"
				aria-controls="collapseOne">Ch01. 개발 환경 구축</button>
		</h2>
		<div id="collapseOne"
			class="accordion-collapse collapse ${chNum == 'ch01'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/ch01/content?chNum=ch01">공통
							레이아웃 구성</a></li>
				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch02'?'':'collapsed'} "
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseTwo" aria-expanded="true"
				aria-controls="collapseTwo">Ch02. 요청 매핑</button>
		</h2>
		<div id="collapseTwo"
			class="accordion-collapse collapse ${chNum == 'ch02'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/ch02/getMethod?chNum=ch02">GET
							방식</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch02/postMethod?chNum=ch02">POST
							방식</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch02/modelAndViewReturn?chNum=ch02">ModelAndViewReturn
							리턴</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch02/voidReturn?chNum=ch02">void
							리턴</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch02/objectReturn?chNum=ch02">object
							리턴</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch02/testAuthInterceptor1?chNum=ch02">로그인
							없이도 볼 수 있는 내용</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch02/testAuthInterceptor2?chNum=ch02">로그인
							해야지 볼 수 있는 내용</a></li>

				</ul>
			</div>
		</div>
	</div>
	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch03'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseThree" aria-expanded="false"
				aria-controls="collapseThree">Ch03. 요청 매핑 메소드의 매개변수</button>
		</h2>
		<div id="collapseThree"
			class="accordion-collapse collapse ${chNum == 'ch03'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/ch03/receiveParamData?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">GET
							방식 데이터 얻기</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch03/postMethodForm">POST
							방식 폼데이터 얻기</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch03/requestParamAnnotation?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">@RequestParam</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch03/requestParamAnnotationRequired?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">@RequestParam의
							required 속성</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch03/requestParamAnnotationDefaultValue?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">@RequestParam의
							defaultValue 속성</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch03/typeChange?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">요청
							파라미터 값 타입 변환</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch03/getDto?param1=문자열&param2=5&param3=3.14&param4=true&param5=2024-04-15">요청
							파라미터의 값을 DTO로 받기</a></li>
					<li><a href="${pageContext.request.contextPath}/ch03/ajax">AJAX로
							요청 파라미터 보내기</a></li>

				</ul>
			</div>
		</div>
	</div>

	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch04'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseFour" aria-expanded="false"
				aria-controls="collapseFour">Ch04. 폼 유효성 검사</button>
		</h2>
		<div id="collapseFour"
			class="accordion-collapse collapse ${chNum == 'ch04'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/ch04/loginForm">로그인 폼</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch04/signupForm">회원가입
							폼</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch05'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseFive" aria-expanded="false"
				aria-controls="collapseFive">Ch05. 요청 헤더 값 및 쿠키 사용</button>
		</h2>
		<div id="collapseFive"
			class="accordion-collapse collapse ${chNum == 'ch05'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch05/header">요청
							헤더 값</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch05/createCookie">쿠키
							생성 및 응답 http에 포함시켜서 보내기</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch05/readCookie">요청
							http에서 쿠키 값 얻기</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch06'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseSix" aria-expanded="false"
				aria-controls="collapseSix">Ch06. 포워드와 리다이렉트</button>
		</h2>
		<div id="collapseSix"
			class="accordion-collapse collapse ${chNum == 'ch06'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch06/forward">포워드와
							request 범위 데이터</a></li>
					<li><a href="${pageContext.request.contextPath}/ch06/redirect">리다이렉트와
							session 범위 데이터</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch06/sessionData">다른
							요청 시 session 범위 데이터</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch07'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseSeven" aria-expanded="false"
				aria-controls="collapseSeven">Ch07. 데이터 전달</button>
		</h2>
		<div id="collapseSeven"
			class="accordion-collapse collapse ${chNum == 'ch07'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch07/request1">ModelAndView:
							request 범위</a></li>
					<li><a href="${pageContext.request.contextPath}/ch07/request2">DTO:
							request 범위</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch07/sessionLoginForm">HttpSession:
							session 범위 </a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch07/application">ServletContext:
							application 범위 </a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch08'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseEight" aria-expanded="false"
				aria-controls="collapseEight">Ch08. 세션 지원</button>
		</h2>
		<div id="collapseEight"
			class="accordion-collapse collapse ${chNum == 'ch08'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/ch08/productList">상품
							목록</a></li>
					<li><a href="${pageContext.request.contextPath}/ch08/cartView">
							장바구니 보기</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch09'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseNine" aria-expanded="false"
				aria-controls="collapseNine">Ch09. 파일 업로드와 다운로드</button>
		</h2>
		<div id="collapseNine"
			class="accordion-collapse collapse ${chNum == 'ch09'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/ch09/fileUploadForm">파일
							업로드</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch09/downloadFileList">파일
							다운로드</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch10'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseTen" aria-expanded="false"
				aria-controls="collapseTen">Ch10. 예외 처리</button>
		</h2>
		<div id="collapseTen"
			class="accordion-collapse collapse ${chNum == 'ch10'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a
						href="${pageContext.request.contextPath}/ch10/handlingException1">try-catch
							이용</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch10/handlingException2">@ExceptionHandler
							이용</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch10/handlingException3">사용자
							정의 예외 처리</a></li>
					<li><a
						href="${pageContext.request.contextPath}/ch10/handlingException4">기타
							500 예외 처리</a></li>
					<li><a href="${pageContext.request.contextPath}/ch10/aaaaa">404
							처리</a></li>
				</ul>
			</div>
		</div>
	</div>

	<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch11'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapseEleven" aria-expanded="false"
				aria-controls="collapseEleven">Ch11. 국제화</button>
		</h2>
		<div id="collapseEleven"
			class="accordion-collapse collapse ${chNum == 'ch11'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch11/joinForm">다국어
							처리</a></li>
				</ul>
			</div>
		</div>
	</div>
	
		<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch12'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapse12" aria-expanded="false"
				aria-controls="collapse12">Ch12. 의존성 주입</button>
		</h2>
		<div id="collapse12"
			class="accordion-collapse collapse ${chNum == 'ch12'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch12/createBeanByXml">XML 설정으로 빈 생성</a></li>
					<li><a href="${pageContext.request.contextPath}/ch12/createBeanByAnnotation">Annotation으로 관리 빈 생성</a></li>
					<li><a href="${pageContext.request.contextPath}/ch12/diByXml">XML 설정으로 관리빈의 의존성 주입</a></li>
					<li><a href="${pageContext.request.contextPath}/ch12/diByAnnotation">Annotation으로 관리빈의 의존성 주입</a></li>
				</ul>
			</div>
		</div>
	</div>
	
	
			<div class="accordion-item">
		<h2 class="accordion-header">
			<button class="accordion-button ${chNum == 'ch13'?'':'collapsed'}"
				type="button" data-bs-toggle="collapse"
				data-bs-target="#collapse13" aria-expanded="false"
				aria-controls="collapse13">Ch13. 데이터베이스 연동</button>
		</h2>
		<div id="collapse13"
			class="accordion-collapse collapse ${chNum == 'ch13'?'show':''}"
			data-bs-parent="#accordionExample">
			<div class="accordion-body">
				<ul>
					<li><a href="${pageContext.request.contextPath}/ch13/writeBoardForm">게시물 쓰기 (첨부 제외)</a></li>
					<li><a href="${pageContext.request.contextPath}/ch13/boardList">게시물 목록</a></li>
				</ul>
			</div>
		</div>
	</div>



</div>
