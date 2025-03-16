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
			
			// .length
			var data = "가나다라마바";
			console.log("전체 문자 수 : " + data.length);
			
			// .charAt()
			var data = "1234567890123";
			console.log("전체 문자 수 : " + data.length);
			console.log("성별 숫자 : ", data.charAt(6));
			
			// .includes : true or false 
			console.log(data.includes("567"));
			
			// .indexof : true이면 인덱스 리턴, false이면 -1 리턴
			console.log(data.indexOf("7890123")); // 6 
			
			// .slice(start, end) : start부터 end-1까지 
			console.log(data.slice(0,6)); // 123456
			console.log(data.slice(6)); // 7890123
			
			// .split
			var data2 = "123456-7890123";
			console.log(data2.split("-"));
			
			// .substr(start, count)
			console.log(data2.substr(0,6)); // 123456
			console.log(data2.substr(7)); // 7890123
			
			// .substring(start, end)
			console.log(data2.substring(0,6)); // 123456
			console.log(data2.substring(7)); // 7890123
			
		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam13_string</div>
		  	<div class="card-body">
				content
		  </div>
		</div>
	</body>
</html>