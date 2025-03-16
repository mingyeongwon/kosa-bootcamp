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
		
			// 객체 초기화하는 생성자 함수 정의 
			function Car() {
				this.name = "그랜저"; // this 사용해서 객체 초기화하기 
				this.price = 50000000;
				this.start = function() {
					console.log("시동을 겁니다.");
				};
			};
			
			function Person(name, age) {
				this.name = name;
				this.age = age;
			}
			
			// 객체 생성 
			const myCar = new Car();
			console.log(myCar.name);
			console.log(myCar.price);
			myCar.start();
			
			const my = new Person("홍길동", 30);
			const you = new Person("감자바", 27);
			console.log(my);
			console.log(you);
		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam08_function_constructor</div>
		  	<div class="card-body">
				content
		  </div>
		</div>
	</body>
</html>