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
			function basic() {
				console.log("basic() 실행");
				const arr = ["java", "javascript", "vue.js"];
				console.log(arr[1]);
				console.log(arr.length);
				arr[2] = "Spring";
				for(var i = 0; i < arr.length; i++) {
					console.log(arr[i]);
				}
				for(var item in arr) { // of : 항목 반복, in : 인덱스 반복 
					console.log(item); // 0, 1, 2
				}
			}
			
			const appendItem = () => {
				console.log("appendItem() 실행");
				const arr = ["java"];
				arr.push("html");
				arr.push("css");
				for(var item of arr) {
					console.log(item);
				}
			};
			
			function removeAndInsertItem() {
				console.log("removeAndInsertItem() 실행");
				var arr = ["banana", "orange", "apple", "mango"];
				arr.splice(2, 1); // 두 번째 인덱스부터 1개 삭제 
				console.log(arr); // ['banana', 'orange', 'mango']
				
				arr = ["banana", "orange", "apple", "mango"];
				arr.splice(2, 0, "lemon", "kiwi"); // 두번째가 0일 때만 삽입 가능 , 2인덱스부터 0개 삭제하고 세 번째 값 이후 삽입
				console.log(arr);// ['banana', 'orange', 'lemon', 'kiwi', 'apple', 'mango']
				
				arr = ["banana", "orange", "apple", "mango"];
				arr.splice(2, 2, "lemon", "kiwi"); // 2인덱스부터 2개 삭제하고 세 번째 이후 삽입
				console.log(arr); // ['banana', 'orange', 'lemon', 'kiwi']
			}
			
			function concatArray() { // 배열 합치기
				const arr1 = ["banana", "orange"];
				const arr2 = ["apple", "mango"];
				const arr3 = arr1.concat(arr2);
				console.log(arr1);
				console.log(arr2);
				console.log(arr3);
			}
			
			function filterItem() {
				 const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				 const newArr = arr.filter(item => item.writer === "홍길서");
				 console.log(newArr);
				 
				 const newArr2 = arr.filter(item => item.bno % 2 === 1);
				 console.log(newArr2);
			}
			
			function findItem() {
				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				const newBoard = arr.find(item => item.bno === 3);
				console.log(newBoard);
				
				const newBoard2 = arr.find(item => item.writer === "홍길남");
				console.log(newBoard2);
			}
			
			function handleEachItem() {
				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				
				// for: index 이용
				for (var i = 0; i < arr.length; i++) {
					console.log(arr[i]);
				}
				
				// for: of 이용
				for (var item of arr) {
					console.log(item);
					console.log(item.bno, item.title, item.writer);
				}
				
				// 배열의 forEach() 메소드 이용
				arr.forEach(item => {
					console.log(item)
				});
			}
			
			function mapItem() {
				const arr = [
			          { bno: 1, title: "제목1", writer: "홍길동" },
			          { bno: 2, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 4, title: "제목4", writer: "홍길서" },
			          { bno: 5, title: "제목5", writer: "홍길북" },
			     ];
				
				// 제목으로 구성된 새로운 배열 얻기 
				const titles = arr.map(item => item.title);
				console.log(titles);
				
				const bnoArr = arr.map(item => item.bno);
				console.log(bnoArr);
				
				const newArr = arr.map(item => {
					var now = new Date();
					var strDate = now.getFullYear() + "." + (now.getMonth()+1) + "." + now.getDate();
					return {...item, date: strDate};
				});
				console.log(newArr);
			}
			
			function sortItem() {
				const fruits = ["Banana", "Orange", "Apple", "Mango"];
				fruits.sort(); // 올림차순
				console.log(fruits);
				fruits.reverse(); // 내림차순 (올림차순 하고 난 이후에 사용 가능)
				console.log(fruits);
				
				const arr = [
			          { bno: 2, title: "제목1", writer: "홍길동" },
			          { bno: 4, title: "제목2", writer: "홍길서" },
			          { bno: 3, title: "제목3", writer: "홍길남" },
			          { bno: 5, title: "제목4", writer: "홍길서" },
			          { bno: 1, title: "제목5", writer: "홍길북" },
			     ];
				
				// bno 기준으로 올림차순하기
				arr.sort((item1, item2) => {
					return item1.bno - item2.bno;
				});
				console.log(arr);
				
				// bno 기준으로 내림차순하기
				arr.sort((item1, item2) => {
					return -(item1.bno - item2.bno);
				});
				console.log(arr);
				
				// title 기준으로 내림차순 정렬
				arr.sort((item1, item2) => {
					if(item1.title < item2.title) {
						return 1;	
					} else if (item1.title === item2.title) {
						return 0;
					} else {
						return -1;
					}
				});
				console.log(arr);
			}
			
		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">exam21_array</div>
		  	<div class="card-body">
				<p><button onclick="basic()" class="btn btn-info btn-sm">기본</button></p>
				<p><button onclick="appendItem()" class="btn btn-info btn-sm">새 항목 추가</button></p>
				<p><button onclick="removeAndInsertItem()" class="btn btn-info btn-sm">항목 제거 및 삽입 </button></p>
				
				<p><button onclick="concatArray()" class="btn btn-info btn-sm">배열 합쳐서 새로운 배열 생성</button></p>
				<p><button onclick="filterItem()" class="btn btn-info btn-sm">필터링 후 새로운 배열 생성</button></p>
				
				<p><button onclick="findItem()" class="btn btn-info btn-sm">항목 찾기</button></p>
				
				<p><button onclick="handleEachItem()" class="btn btn-info btn-sm">항목 일괄처리 (반복처리)</button></p>
				
				<p><button onclick="mapItem()" class="btn btn-info btn-sm">항목 변환하고 새로운 배열 생성</button></p>
				
				<p><button onclick="sortItem()" class="btn btn-info btn-sm">배열 정렬하기</button></p>
				
		  </div>
		</div>
	</body>
</html>