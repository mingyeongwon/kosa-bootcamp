<%@ page contentType="text/html; charset=UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<title>Insert title here</title>
<!-- Bootstrap 5를 위한 외부 라이브러리 설정 -->
<!-- Latest compiled and minified CSS -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
<!-- Latest compiled JavaScript -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>

<!-- jQuery -->
<script src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.min.js"></script>

<!-- 사용자 정의 자바스크립트 -->
<script>
  function updateCartItem(pno){
    var amount=$("#amount"+pno).val();
    $.ajax({
      url:"updateCartItem",
      type: "post",
      data: {pno: pno,amount: amount},
      success: function(data){
        console.log(data);
      }
    })
  }
  
</script>
</head>
<body>

   <div class="d-flex flex-column ">
      <!-- viewport height -->
      <%@include file="/WEB-INF/views/common/header.jsp"%>
      <div class="flex-grow-1 m-2">
         <div class="d-flex row">
            <div class="col-md-4">
               <%@include file="/WEB-INF/views/common/menu.jsp"%>
            </div>

            <div class="col-md-8">
               <!-- #################################### -->
               <div class="card">
                  <div class="card-header">장바구니 보기</div>
                  <div class="card-body">
                     <table class="table table-striped border">
                        <thead class="table-warning">
                           <tr>
                              <th>번호</th>
                              <th>상품명</th>
                              <th>가격</th>
                              <th>수량</th>
                              <th>수정 및 삭제</th>
                           </tr>
                        </thead>
                        <tbody>
                           <c:forEach var="cartItem" items="${cart}">
                              <tr>
                                 <td>${cartItem.product.pno}</td>
                                 <td>${cartItem.product.pname}</td>
                                 <td>${cartItem.product.pprice}</td>
                                 <td><input type="number" id="amount${cartItem.product.pno}" value="${cartItem.amount}" style="width:50px"/></td>
                                 <td><button onclick="updateCartItem(${cartItem.product.pno})"class="btn btn-info btn-sm">수정</button>
                                    <a href="removeCartItem?pno=${cartItem.product.pno}" class="btn btn-danger btn-sm">삭제</a>
                                 </td>
                              </tr>
                           </c:forEach>
                        </tbody>
                     </table>
                  </div>
               </div>
               <!-- #################################### -->
            </div>
         </div>
      </div>
   </div>
</body>
</html>