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
					var var1 = 1; // 전역 변수
					let var2 = 1.0; // 전역 변수
					const var3 = 1; // 전역 변수
					// 콘솔에 변수값 출력 
					console.log("var1: ", var1);
					console.log("var2: ", var2);
					console.log("var3: ", var3);
					console.log("");
				</script>
		
		<script type="text/javascript">
			function fun1() {
				var var4 = 1; // 지역 변수 (함수 레벨)
				let var5 = 1.0; // 지역 변수 (블록 레벨)
				const var6 = "ghi"; // 지역 변수 (블록 레벨)
				
				if(true) {
					var var7 = 100; // 지역 변수 (함수 레벨)
					let var8 = 100.0; // 지역 변수 (블록 레벨)
					const var9 = "jhi"; // 지역 변수 (블록 레벨)
					
					console.log("var1:", var1);
					console.log("var2:", var2);
					console.log("var3:", var3);
					console.log("var4:", var4);
					console.log("var5:", var5);
					console.log("var6:", var6);
					console.log("var7:", var7);
					console.log("var8:", var8);
					console.log("var9:", var9);
					console.log("");
				}
				
				console.log("var1:", var1);
				console.log("var2:", var2);
				console.log("var3:", var3);
				console.log("var4:", var4);
				console.log("var5:", var5);
				console.log("var6:", var6);
				console.log("var7:", var7);
				console.log("");
			}
			
			function fun2() {
				console.log("var1:", var1);
				console.log("var2:", var2);
				console.log("var3:", var3);
				console.log("");
			}
			
			fun1();
			fun2();
		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam02_variables</div>
		  	<div class="card-body">
				
		  </div>
		</div>
	</body>
</html>