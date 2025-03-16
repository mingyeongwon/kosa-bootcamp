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
						<div class="card-header">계좌 정보 및 계좌 이체하기</div>
						<div class="card-body">
							<table style="width:auto" class="table table-sm table-bordered">
				               <tr>
				                  <th style="width:50px">번호</th>
				                  <th style="width:100px">소유주</th>
				                  <th style="width:200px">잔고</th>
				               </tr>
				               
				               <c:forEach var="account" items="${list}">
				                  <tr>
				                     <td>${account.ano}</td>
				                     <td>${account.owner}</td>
				                     <td style="text-align:right;">${account.balance}</td>
				                  </tr>
				               </c:forEach>
				            </table>
				            
				            <hr/>
					
							<form id="accountTransferForm" method="post" action="transfer">
				               <table style="width:auto" class="table table-sm table-bordered">
				                  <tr>
				                     <th style="width:150px">출금 계좌</th>
				                     <td><input id="fromAccount" type="text" name="fromAno" value="1"/></td>
				                  </tr>
				                  <tr>
				                     <th>입금 계좌</th>
				                     <td><input id="toAccount" type="text" name="toAno" value="2"/></td>
				                  </tr>
				                  <tr>
				                     <th>이체 금액</th>
				                     <td><input id="amount" type="text" name="amount" value="10000"/></td>
				                  </tr>
				               </table>
				               <input class="btn btn-info" type="submit" value="이체하기"/>                  
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