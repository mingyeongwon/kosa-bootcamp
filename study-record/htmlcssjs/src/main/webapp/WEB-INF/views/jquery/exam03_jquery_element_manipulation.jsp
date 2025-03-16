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
		
		<script type="text/javascript">
		
			function changeContent() { // 기존 내용 대체
				$("#div1").html("<img src='/htmlcssjs/resources/image/photos/photo1.jpg' width='150'/>");
			}
			
			function appendContent() { 
				const el_img = "<img src='/htmlcssjs/resources/image/photos/photo2.jpg' width='150'/>";
				$("#div1").append(el_img); // 기존 내용 뒤에 추가 
			}
			
			function deleteContent() { 
				$("#div1").html(""); //  기존 내용 전부 삭제
				$("#div1").empty();
				
				$("#div1").find("img:last-Child").remove(); // 맨 뒤에 있는 엘리먼트 삭제
			}
			
			function changeCss() {
				$("#img1").css("width", "50px"); // style로 접근 시 px 단위 적어주기 
				$("#img1").css("height", "50px");
				$("#img1").css("border-radius", "25px");
				$("#img1").css("border-width", "2px");
				$("#img1").css("border-color", "red");
				$("#img1").css("border-style", "solid");
			}
			
			function changeAttribute() {
				$("#img2").attr("src", "/htmlcssjs/resources/image/photos/photo6.jpg");
			}
			
		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam03_jquery_element_manipulation</div>
		  	<div class="card-body">
				
				<div class="card">
					<div class="card-header">엘리먼트 변경, 추가, 삭제</div>
		  			<div class="card-body">
		  				<button onclick="changeContent()" class="btn btn-warning btn-sm">변경</button>
		  				<button onclick="appendContent()" class="btn btn-warning btn-sm">추가</button>
		  				<button onclick="deleteContent()" class="btn btn-warning btn-sm">삭제</button>
		  				<hr/>
		  				<div id="div1"></div>
		  			</div>
				</div>
				
				<div class="card">
					<div class="card-header">스타일 변경</div>
		  			<div class="card-body">
		  				<button onclick="changeCss()" class="btn btn-warning btn-sm">스타일 변경</button>
		  				<hr/>
		  				<div id="div2">
		  					<img id="img1" src="/htmlcssjs/resources/image/photos/photo3.jpg" width="100"/>
		  					<img class="rounded-circle" src="/htmlcssjs/resources/image/photos/photo4.jpg"
		  												width="50" height="50"/>
		  				</div>
		  			</div>
				</div>
				
				<div class="card">
					<div class="card-header">속성값 변경</div>
		  			<div class="card-body">
		  				<button onclick="changeAttribute()" class="btn btn-warning btn-sm">속성값 변경</button>
		  				<hr/>
		  				<div id="div3">
		  					<img id="img2" 
		  						 src="/htmlcssjs/resources/image/photos/photo5.jpg"
		  						 class="rounded-circle"
		  						 width="100" height="100"/>
		  				
		  				</div>
		  			</div>
				</div>
		  </div>
		</div>
	</body>
</html>