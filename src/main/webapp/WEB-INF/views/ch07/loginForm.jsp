<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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
						<div class="card-header">로그인 양식</div>
						<div class="card-body">
							<c:if test="${login=='success'}">
								<a href="sessionLogout" class="btn btn-danger btn-sm">로그아웃</a>
							</c:if>
							
							<c:if test="${login!='success'}">
								<form class="m-2" method="post" action="sessionLogin">
									<div class="form-group mb-2">
										<label for="mid">아이디</label> 
										<input type="text" class="form-control" id="mid" name="mid" value="${ch04LoginForm.mid}">
									</div>
									<div class="form-group mb-2">
										<label for="mpassword">패스워드</label> 
										<input type="password" class="form-control" id="mpassword" name="mpassword" value="${ch04LoginForm.mpassword}">
									</div>
									<button type="submit" class="btn btn-info btn-sm">로그인</button>
								</form>
							</c:if>
						</div>
					</div>
					<!-- ########################################## -->
				</div>
			</div>
		</div>
	</div>
</body>
</html>