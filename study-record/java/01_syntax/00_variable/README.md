## 코드 용어 이해
- 클래스 선언 
```
public class Hello
```

- main 메소드 선언
```
public static void main(String[] args)
``` 

- 괄호 안 내용 출력하는 실행문
```
System.out.println();
 ```

## 코드 주석 달기
|개념|종류|설명
|--------|--------|-------
|행 주석|//|//부터 행 끝까지
|범위 주석|/* */|/*와 */ 사이에 있는 내용
 
## 변수 선언
- 변수 : 변할 수 있는 값을 저장할 수 있는 저장소
- 캐멀 (camel) 스타일 1. 자바 소스 파일명 (클래스명) : 대문자로 시작 ex) MemberGrade.java
변수명 : 소문자로 시작 ex) memberGrade

- 변수 이름 한글 사용 X

- 대입 연산자 = : 우측 값을 좌측 변수에 저장
```
score = 90;
```

- 변수 선언
```
int score;
``` 

- 변수 초기화 : 변수에 최초로 값을 대입하는 행위
- 초기값 : 변수에 최초로 대입하는 값
```
int score = 90;
```

## 변수 타입
- 정수 : byte, char, short, int, long
- 실수: float, double
- 논리(true/false) : boolean

<br/>

- 정수 타입

|타입|메모리 크기|저장되는 값의 허용 범위|설명	
|--------|--------|-------|-------
|byte	|1byte	8bit	|-2^7 ~ (2^7-1)	|-128 ~ 127
|short	|2byte	 	|-2^15 ~ (2^15-1)	|-32,768 ~ 32,767
|char	|2byte	 	|0 ~ (2^16-1)	|0 ~ 65,535 (유니코드)
|int	|4byte	 	|-2^31 ~ (2^31-1)	|-2,147,483,648 ~ 2,147,483,647
|long	|8byte	 	|-2^63 ~ (2^63 -1)	|-9,223,372,036,854,775,808 ~ 9,223,372,036,854,775,807

<br/>

- 리터럴 (literal) : 직접 입력한 값
- 정수 리터럴 : 기본적으로 int 타입으로 간주 → int 허용 범위 넘어서면 마지막에 l 또는 L 붙이기
![image](https://github.com/user-attachments/assets/c83c7985-b688-41b9-ab16-2e6fde97ea84)

- 문자 리터럴 : 작은 따옴표 ‘ ‘로 감싼 하나의 문자
```
char v1 = ‘A’; //65 저장
```
```
char c1 = 'A';
char c2 = 65;
		
char c3 = '가';
char c4 = 44032;
		
System.out.println(c1); //A
System.out.println(c2); //A
System.out.println(c3); //가
System.out.println(c4); //가
``` 

- char 변수에 빈 문자 X → 공백 포함해서 초기화
![image](https://github.com/user-attachments/assets/1a2ba4e1-33eb-493d-9151-77bd9cb25c72)

- 실수 타입

|타입|유효 소수 이하 자리
|--------|--------
|float	|7
|double	|15
 
- 실수 리터럴 : 기본적으로 double로 간주 → float 타입이면 마지막에 f 또는 F 붙이기
```
float v1 = 0.1234567890123456789F;
double v2 = 0.1234567890123456789;

System.out.println(v1); //0.12345679
System.out.println(v2); //0.12345678901234568
```

- 논리 리터럴 : true, false
```
boolean stop = true;
if(stop) {
	System.out.println("중지합니다");
} else {
	System.out.println("시작합니다");
}
``` 

- 문자열 타입 : String
문자열 : 큰따옴표 “ “로 감싼 문자

- 이스케이프 (escape) 문자 : 문자열 내부에 역슬래쉬 \ 붙은 문자

|종류|설명
|-------|-------
|\”	|“ 포함
|\’	|‘ 포함
|\\	|\ 포함
|\t	|출력 시 탭만큼 띄움
|\n	|출력 시 줄 바꿈

```
String str = "나는 \"자바\"를 배웁니다.";
System.out.println(str); //나는 "자바"를 배웁니다.
``` 

- 텍스트 블록 “”” “”” : 이스케이프 문자 필요 없이 작성한 그대로 문자열로 저장됨 (Java 13부터 가능)
```
String str1 = "" +
	"{\n" +
	"\t\"id\": \"winter\",\n" +
	"\t\"name\": \"눈송이\"\n" +
	"}";
System.out.println(str1);
		
String str2 = """
	{
		"id": "winter",
		"name": "눈송이"
	}
	""";
System.out.println(str2);
``` 
