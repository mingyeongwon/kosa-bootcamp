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
						<div class="card-header">게시물 목록</div>
						<div class="card-body">
					      <table class="table table-sm table-bordered">
					         <tr>
					            <th style="width:30px">번호</th>
					            <th style="width:300px">제목</th>
					            <th style="width:70px">글쓴이</th>
					            <th style="width:70px">날짜</th>
					            <th style="width:70px">조회수</th>
					         </tr>
					         
					         <c:forEach var="board" items="${boardList}">
					            <tr>
					               <td>${board.bno}</td>
					               <td><a href="detailBoard?bno=${board.bno}">${board.btitle}</a></td>
					               <td>${board.mid}</td>
					               <td><fmt:formatDate value="${board.bdate}" pattern="yyyy-MM-dd"/></td>
					               <td>${board.bhitcount}</td>
					            </tr>
					         </c:forEach>
					         
					         <tr>
					            <td colspan="4" class="text-center">
					               <div>
					                  <a class="btn btn-outline-primary btn-sm" href="boardList?pageNo=1">처음</a>
					                  <c:if test="${pager.groupNo>1}">
					                     <a class="btn btn-outline-info btn-sm" href="boardList?pageNo=${pager.startPageNo-1}">이전</a>
					                  </c:if>
					                  
					                  <c:forEach var="i" begin="${pager.startPageNo}" end="${pager.endPageNo}">
					                     <c:if test="${pager.pageNo != i}">
					                        <a class="btn btn-outline-success btn-sm" href="boardList?pageNo=${i}">${i}</a>
					                     </c:if>
					                     <c:if test="${pager.pageNo == i}">
					                        <a class="btn btn-danger btn-sm" href="boardList?pageNo=${i}">${i}</a>
					                     </c:if>
					                  </c:forEach>
					                  
					                  <c:if test="${pager.groupNo<pager.totalGroupNo}">
					                     <a class="btn btn-outline-info btn-sm" href="boardList?pageNo=${pager.endPageNo+1}">다음</a>
					                  </c:if>
					                  <a class="btn btn-outline-primary btn-sm" href="boardList?pageNo=${pager.totalPageNo}">맨끝</a>
					               </div>
					            </td>
					         </tr>
					      </table>						
						</div>
					</div>
					<!-- ########################################## -->
				</div>
			</div>
		</div>
	</div>
	</body>
</html>