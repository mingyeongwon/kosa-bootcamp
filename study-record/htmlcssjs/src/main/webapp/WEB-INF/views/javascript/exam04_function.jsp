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
				console.log("fun1() 실행");	
			}
			
			fun1();
			
			var fun2 = function() {
				console.log("fun2() 실행");
			};
			
			fun2();
			
			var fun3 = () => {
				console.log("fun3() 실행");
			}

			fun3();
			
			var fun4 = fun3;
			fun4();
			
			function fun5(arg1, arg2=0) {
				console.log("arg1:", arg1);
				console.log("arg2:", arg2);
			}
			fun5(10, "abc");
			fun5(10);
			
			var var6 = (arg1, arg2) => {
				console.log("fun6() 실행");
				console.log("arg1:", arg1);
				console.log("arg2:", arg2);
			};
			var6('abc', "def");
			
			var var7 = (arg1) => console.log("arg1:", arg1);
			var var8 = arg1 => console.log("arg1:", arg1);
			
			function fun9(x, y) {
				return result;
			}
			const fun10 = (x, y) => x + y;
			const result1 = fun9(10, 20);
			console.log("result1:", result1);
		

		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">header</div>
		  	<div class="card-body">
				content
		  </div>
		</div>
	</body>
</html>