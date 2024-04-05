<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<meta name="viewport" content="width=device-width, initial-scale=1.0">
		<title>Insert title here</title>
		<!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
		<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
		<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
	
		<script type="text/javascript">
			function fun1() {
				// ViewPort 크기 얻기 
				window.console.log(window.innerWidth); // window 생략 가능
				console.log(window.innerHeight);
			}
			
			function fun2() {
				window.open("https://www.w3schools.com", 
							"mywin", 
							"top=100, left=200, width=350, height=500");
			}
			
			function fun3() {
				window.location.href="/htmlcssjs"
			}
			
			function fun4() {
				window.history.back();
			}
			
			function fun5() {
				window.history.forward();
			}
		</script>
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam01_bom</div>
		  	<div class="card-body">
				
				<button class="btn btn-info btn-sm" onclick="fun1()">window 객체 정보 얻기</button>
				<button class="btn btn-info btn-sm" onclick="fun2()">window 띄우기 (팝업)</button>
				
				<hr/>
				
				<button class="btn btn-info btn-sm" onclick="fun3()">url 변경하기 (이동)</button>
				<hr/>
				
				<button class="btn btn-info btn-sm" onclick="fun4()">이전</button>
				<button class="btn btn-info btn-sm" onclick="fun5()">다음</button>
		  </div>
		</div>
	</body>
</html>