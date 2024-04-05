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
			
			// 객체 생성
			const board = {
				bno: 1,
				title: "오늘은 월요일",
				content: "날씨가 좋네요. 자바스크립트 공부해야겠어요.", 
				writer: "홍길동"
			};
			
			// 구조 분해
			var {bno} = board;
			console.log("bno : ", bno);
			
			var {title, content} = board;
			console.log("title : ", title);
			console.log("content : ", content);
			
			//---------------------
			
			function fun1({title}) {
				console.log(title);
			}
			fun1(board);
			
			
			var {writer, ...rest} = board; // writer 제외 나머지는 객체로 받음
			console.log(writer);
			console.log(rest);
			
			
			var newBoard = {...board, bno:2, title:"벚꽃이 좋아요.", hitcount:1}; // bno, title 값 바꾸고 나머지는 그대로 
			console.log(newBoard);
			
			
			var newBoard2 = (obj) => {
				return {...obj, hitcount:1};
			};
			
			var newBoard2 = obj => ({...obj, hitcount:1});
			
			console.log(newBoard2(board));
			
		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam12_destructuring_assignment</div>
		  	<div class="card-body">
				content
		  </div>
		</div>
	</body>
</html>