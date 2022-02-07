<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<% 
		// 스크립스릿 (모든 자바 코드 기술 가능)
		int a = 1;
		if(a >= 10){
			out.println("10보다 큰 값"); // 브라우저로 출력 
		} else {
			out.println("10보다 작은 값");
		}
	%>
	<hr>
	<%
		int num = 5;
		if (num >=5 ){
			out.println("<strong>5보다 큰 값</strong>"); // 태그 인식 
		}else{
			out.println("<strong>5보다 작은 값</strong>");
		}
	%>
	<hr>
	<%
		for(int i=1; i<=10; i++){
			out.println(i+"<br>"); // <br> 뺀 결과도 확인 필요
		}
	%>
	<hr> <!-- 보통 이 방식을 선호한다. -->
	<%if(num>=5){%> 
		<p>5보다 큰 값 입니다.</p>
	<%}else{%>
		<p>5보다 작은 값 입니다.</p>
	<%     }%>
	<hr>
	
	
	<!-- 1. 구구단 3단을 out.println과 br태그를 이용해서 출력하시오 -->
	<% int i = 3; %>
	<%for (int j=1; j <=9; j++){%>
	<%	out.println(i+ "*" +j+ "=" +i*j+"<br>");%>
	<%}%>
	<hr>
	<!-- 2. 체크박스 20개를 브라우저에 생성 -->
	<%for (int k = 1; k<=20; k++){%>
		<input type = "checkbox" name = "A">
	<%}%>
	
	
	
</body>
</html>