<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

	<style type="text/css">
		#wrapper {
			width: 700px;
			margin: 0px auto;
			border: 1px solid black;
		}
		
		table {
			border: 1px solid black;
			border-collapse: collapse;
			width: 100%;
		}
		
		th, td {
			border: 1px solid black;
			padding: 5px;
			
		}
		
		tbody > tr:nth-child(even) {
			background-color: #f2f2f2;
		}
		
		tbody > tr:hover {
			background-color: #e0e0e0;
		}
		
		th {
			background-color: #04aa6d;
			color: #ffffff;
		}
		
		td.no {
			text-align: center;
		}
		
		button {
			width: 80px;
		}
		
		tfoot td {
			text-align: end;
		}
	</style>
</head>

<body>
	<h4>exam07_table</h4>
	<hr />

	<div id="wrapper">
		<table>
			<thead>
				<tr>
					<th>bno</th>
					<th>title</th>
					<th>content</th>
				</tr>
			</thead>

			<tbody>
				<tr>
					<td class="no">1</td>
					<td>오늘은 따뜻해?</td>
					<td>온도가 11도까지 올라간다네요.</td>
				</tr>
				<tr>
					<td class="no">2</td>
					<td>목요일입니다.</td>
					<td>내일 금요일은 화면 설계 발표합니다.</td>
				</tr>
				<tr>
					<td class="no">3</td>
					<td>금요일입니다.</td>
					<td>열심히 웹 공부합니다.</td>
				</tr>
				<tr>
					<td class="no">4</td>
					<td>토요일입니다.</td>
					<td>비 온 답니다.</td>
				</tr>
			</tbody>

			<tfoot>
				<tr>
					<td colspan="3">
						<button>추가</button>
						<button>삭제</button>
					</td>
				</tr>
			</tfoot>
		</table>
	</div>
</body>
</html>