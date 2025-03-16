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
			var var1 = 2 ** 3;
			console.log("var1:", var1);
			console.log("");
			
			console.log(3 == "3");
			console.log(3 === "3");
			console.log(3 != "3");
			console.log("");
			
			var var2 = true;
			var var3 = false;
			
			console.log(var2 && var3);
			console.log(var2 && "홍길동");
			
			console.log(var2 || var3);
			console.log(var3 || "홍길동");
			
			console.log(!var3);
			
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