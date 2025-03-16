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
			const car = {};
			car.name = "그랜저";
			console.log(car);
			car.start = function() {
				console.log("시동을 겁니다.")
			};
			car.start();
			car["start"]();
		</script>
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam06_dynamic_field_method</div>
		  	<div class="card-body">
				content
		  </div>
		</div>
	</body>
</html>