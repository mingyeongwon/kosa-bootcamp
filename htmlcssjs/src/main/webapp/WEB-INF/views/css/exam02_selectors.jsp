<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		
		<!-- internal css -->
		<style type="text/css">
			* {
				text-align:center;
				color:blue;
			}
			
			div {
				border: 1px solid red;
				background-color:aqua;
			}
			
			#divId1 {
				background-color:orange;
			}
			
			.divClass1 {
				background-color:red;
			}
			
			.divClass2 {
				background-color:green;
			}
			
			p, header, article {
				border: 1px solid orange;
				text-align: right;
				color: red;
			}
			
			p.classA {
				background-color:maroon;
			}
		</style>
	</head>
	
	<body>
		<h4>exam02_selectors</h4>
		<hr/>
		
		<div></div>
		<div id="divId1">content2</div>
		<div class="divClass1">content2</div>
		<div class="divClass1">content3</div>
		<div class="divClass2">content4</div>
		<div class="divClass2">content5</div>
		
		<p>content6</p>
		<header>content7</header>
		<article>content8</article>
		
		<p class="classA">content9</p>
		<div class="classA">content10</div>
	</body>
</html>