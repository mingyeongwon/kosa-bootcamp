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
		
			const person = {
				name : "홍길동",
				nation : '한국',
				age : 25,
				family : {father : "홍삼원", mather : "정관순"},
				hobby : ["영화", '게임'],
			};
			console.log(person) // {name: '홍길동', nation: '한국', age: 25, family: {…}, hobby: Array(2)}
			
			const strJson = JSON.stringify(person); // 자바스크립트 값을 JSON 문자열로 바꿈 
			console.log(strJson); // {"name":"홍길동","nation":"한국","age":25,"family":{"father":"홍삼원","mather":"정관순"},"hobby":["영화","게임"]}
			
			const person2 = JSON.parse(strJson); // JSON 문자열을 자바스크립트로 변환  
			console.log(person2);
			
			</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam17_json</div>
		  	<div class="card-body">
				content
		  </div>
		</div>
	</body>
</html>