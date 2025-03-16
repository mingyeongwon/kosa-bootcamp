<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Spring_getMethod</title>
<!-- 부트스트랩5를 위한 외부라이브러리 설정 -->
<!-- Latest compiled and minified CSS -->
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<!-- Latest compiled JavaScript -->
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery 외부 라이브러리 설정 -->
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<!-- 사용자 정의 자바스크립트 -->
<script>
	function requestAjax() {
		console.log("requestAjax() 실행");
		
		var param1 = $("#param1").val();
		var param2 = $("#param2").val();
		var param3 = $("#param3").val();
		var param4 = $("input[name=param4]:checked").val();
		var param5 = $("#param5").val();
		
		var params = {param1, param2, param3, param4, param5}; 
		console.log(params);
		
		$.ajax({
			url: "getAjaxParams",
			type: "post",
			data: params, 
			success: function(data) {
				console.log(data);
			}
		});
	}
</script>
</head>
<body>
	<div class="d-flex flex-column vh-100">
		<%@ include file="/WEB-INF/views/common/header.jsp"%>
		<div class="flex-grow-1 m-2">
			<div class="d-flex row">
				<div class="col-md-4">
					<%@ include file="/WEB-INF/views/common/menu.jsp"%>
				</div>

				<div class="col-md-8">
					<!-- ############################################ -->
					<div class="card">
						<div class="card-header">receiveParamData</div>
						<div class="card-body">
							<a href="javascript:requestAjax()" class="btn btn-info btn-sm">AJAX로
								비동기 요청</a>
							<button onclick="requestAjax()" class="btn btn-info btn-sm">AJAX로
								비동기 요청</button>

							<hr />

							<form>
								<div class="input-group">
									<span class="input-group-text">param1</span> <input id="param1" type="text"
										name="param1" class="form-control" value="문자열">
								</div>
								<div class="input-group">
									<span class="input-group-text">param2</span> <input id="param2" type="text"
										name="param2" class="form-control" value="5">
								</div>
								<div class="input-group">
									<span class="input-group-text">param3</span> <input id="param3" type="text"
										name="param3" class="form-control" value="3.14">
								</div>
								<div class="input-group">
									<span class="input-group-text">param4</span>
									<div class="form-control d-flex">
										<div>
											<input type="radio" name="param4" checked value="true">
											<label>true</label>
										</div>
										<div class="ms-3">
											<input type="radio" name="param4" value="false"> <label>false</label>
										</div>
									</div>
								</div>
								<div class="input-group">
									<div class="input-group-prepend">
										<span class="input-group-text">param5</span>
									</div>
									<input id="param5" type="date" name="param5" class="form-control"
										value="2030-12-05">
								</div>
								
							</form>

						</div>
					</div>
					<!-- ########################################## -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>