<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>   
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

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
						<div class="card-header">게시물 보기</div>
						<div class="card-body">
							
							<p>번호: ${board.bno}</p>
							<p>제목: ${board.btitle }</p>
							<p>글쓴이: ${board.mid }</p>
							<p>날짜: <fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd"/></p>
							<p>조회수: ${board.bhitcount}</p>
							
							<c:if test="${board.battachoname != null}">
								<div class="mb-2">
									<p>첨부파일: <a href="attachDownload?bno=${board.bno}">${board.battachoname}</a></p>							
									<img src="attachDownload?bno=${board.bno}" width="150"/>								
								</div>
							</c:if>
							
							<p>내용: ${board.bcontent}</p>
							
							<hr/>
							
							<a href="boardList" class="btn btn-info btn-sm">목록</a>
							<a href="updateBoardForm?bno=${board.bno}" class="btn btn-info btn-sm">수정</a>
							<a href="deleteBoard?bno=${board.bno}" class="btn btn-info btn-sm">삭제</a>
						</div>
					</div>
					<!-- ########################################## -->
				</div>
			</div>
		</div>
	</div>
	</body>
</html>