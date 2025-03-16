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
		var var1 = 3;
		var var2 = "abc";
		var var3 = () => {};
		var var4 = {};
		var var5 = [];
		console.log("var1의 타입:", typeof(var1));
		console.log("var1의 타입:", typeof(var2));
		console.log("var1의 타입:", typeof(var3));
		console.log("var1의 타입:", typeof(var4));
		console.log("var1의 타입:", typeof(var5));
		
		var car = {
			company: "현대자동차",
			name: "그랜저",
			price: 50000000,
			
			
			
		};
		console.log(car.company);
		console.log(car.name);
		console.log(car.price);
		console.log(car["company"]);
		console.log("");
		
		
		
		car = {
			car.company: "포르쉐",
			speed: 0,
			
/* 			run: function() {
				this.setSpeed(60);
				console.log(this.company + "의" + this.name + "가" + this.speed + "로 달립니다.");
			}, */
			
			run() {
				this.setSpeed(60);
				console.log(this.company + "의" + this.name + "가" + this.speed + "로 달립니다.");
			},
			
			/* setSpeed: function(speed) {
		    	this.speed = speed;
		    }, */
		    
		    setSpeed(speed) {
		    	this.speed = speed;
		    },
		    
		    /* toString: function() {
		    	return this.company + "-" + this.name;
		    } */
		    
		    toString() {
		    	return this.company + "-" + this.name;
		    },
		    
		    sound: function() {
		    	console.log("빵빵");
		    }
			
		};
		
		car.run();
		var info = car.toString();
		console.log(info);
		car.sound();
		
		</script>
	
	</head>

	<body>
		<div class="card">
			<div class="card-header">header</div>
		  	<div class="card-body">
				content
		  </div>
		</div>
	</body>
</html>