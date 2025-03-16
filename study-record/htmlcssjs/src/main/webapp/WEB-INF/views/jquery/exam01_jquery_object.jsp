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
		
		<!-- jQuery 외부 라이브러리 설정 -->
		<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

		<!-- 사용자 정의 자바 스크립트-->
		<script type="text/javascript">
			function changeBgColor() {
				// jQuery 객체 얻기 
				var jq_color_div = $(".colorDiv");
				console.log(jq_color_div);
				
				// jQuery 객체가 가지고 있는 메소드 호출 
				// jq_color_div.css("background-color", "orange");
				jq_color_div.addClass("bg-danger");
			}
		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam01_jquery_object</div>
		  	<div class="card-body">
			
			<!-- 
			--jQuery Object ---------------------------------------
			|                                                     |
			|  method1(), method2(), method3(), ...               |
			|                                                     |
			|-----------------------------------------------------|
			|    0    |    1    |    2    | ...                   |
			| Element | Element | Element | ...                   |
			-------------------------------------------------------
			 -->
			
			<button onclick="changeBgColor()" class="btn btn-info btn-sm">배경색 변경</button>
			<hr/>
			
			<div class="d-flex">
				<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
				<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
				<div class="colorDiv me-3 border" style="width:100px; height:100px"></div>
			</div>	
				
		  </div>
		</div>
	</body>
</html>