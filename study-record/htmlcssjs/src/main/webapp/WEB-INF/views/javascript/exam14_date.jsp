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
		
			// 브라우저가 실행하는 컴퓨터의 현재 날짜 및 시간 객체 얻기
			const now = new Date();
			// 정보 얻기
			const year = now.getFullYear();
			const month = now.getMonth() + 1;
			const date  = now.getDate();
			const hour = now.getHours();
			const minutes = now.getMinutes();
			const seconds = now.getSeconds();
			
			console.log(year, month, date, hour, minutes, seconds); // 2024 4 1 15 33 22
			console.log(now); // Mon Apr 01 2024 15:33:22 GMT+0900 (한국 표준시)
			console.log(now.toLocaleDateString()); // 2024. 4. 1.
		
		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam14_date</div>
		  	<div class="card-body">
				content
		  </div>
		</div>
	</body>
</html>