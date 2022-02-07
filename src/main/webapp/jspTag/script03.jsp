<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%! 
// 여기는 선언자 (느낌표 있음, 멤버변수 선언)
// 변수선언 가능하며 값이 누적될 수 있다. 
	int total=0;
%>  
<% 
// 여기는 스크립트릿 (느낌표 없음, 지역변수, 특정 메서드 안에서 사용되는것처럼 사용)
// 스크립트릿: 실행될때마다 한번씩 실행된다. 
// 여기는 페이지가 1번 실행될 때마다 작성될 코드를 적는다. 
	int each = 0;

	total++;
	each++;
%>     
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<!-- 실행시키고 F5 눌러보자 -->
	total : <%= total %> <br> <!-- 멤버변수 total 값은 계속 올라감 -->
 	each : <%= each %> <br> <!-- 그대로 -->
</body>
</html>