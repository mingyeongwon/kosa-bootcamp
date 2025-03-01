## 프로그래밍 언어와 자바
- 소스 파일 : 개발자가 작성한 파일로, 고급 언어로 작성된다
- 컴파일 : 소스 파일을 기계어로 변환
- 기계어 : 0과 1로 이루어진 컴퓨터가 이해 가능한 언어
- 바이트코드 : 소스 코드를 가상 머신이 이해할 수 있는 중간 코드로 컴파일 처리한 형태
<br/>

- JVM (Java Virtual Machine : 자바 가상 머신) : 바이트코드 파일을 기계어로 번역하고 실행, 운영체제마다 다름
- JRE (Java Runtime Environment) : 자바 프로그램을 실행시킬 수 있는 환경 = JVM
- JDK (Java Development Kit) : 개발 도구 + JRE,
- JavaSE (Standard Edition) : 자바에 필요한 스펙 정의
<br/>

- JDK 8, 11, 17, 21 버전 설치
- 자바 버전 바꾸기 : 시스템 환경 변수 편집
<br/>

![image](https://github.com/user-attachments/assets/9628e1f1-c27f-42f7-8003-4639001a5e27)
![image](https://github.com/user-attachments/assets/f05ffd8d-287d-4867-8292-4578a81d0acc)

<br/>

- javac 명령어 : 자바 소스 파일 (.java)에서 바이트코드 파일 (.class)로 컴파일 처리 시 사용
- java 명령어 : JVM이 바이트코드 파일을 기계어로 번역하고 실행 시 사용
```
PS C:\temp> javac -d bin src/ch01/sec06/Hello.java
PS C:\temp> java -cp bin ch01.sec06.Hello
Hello
```

## 이클립스 설치
- Eclipse IDE for Enterprise Java and Web Developers 설치
- 위치 : 권리자 권한으로 실행 후 C:\Program Files\eclipse\jee-2023-12
- Use an execution environment JRE : 업데이트는 신경쓰지 않고 큰 버전만 동일하면 된다
- Use a project specific JRE : 업데이트 버전까지 동일해야 한다
![image](https://github.com/user-attachments/assets/aa970510-0a75-43a0-a765-5268c500402c)
Configure JREs에 사용할 버전 등록하기
