<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션은 서버와 정보를 유지하기 위한 수단으로 사용되는 내.장.객.체
	// 내장객체이기 때문에 session.만 해도 바로 사용 가능 
	
	// 값 저장하기 session.setAttribute(세션이름(키), 값)
	session.setAttribute("user_id", "xxx123");
	session.setAttribute("user_name", "홍길동");	
	session.setAttribute("user_name", "도너츠");
	
	// 세션은 어느 페이지에서나 사용할 수 있다. 기본 30분 유지 또는 브라우저가 끄면 사라짐
	// 쿠키는 브라우저 꺼져도 저장되어 있음, 주기적으로 삭제해줘야 함.
	// 세션의 유효기간 설정
	session.setMaxInactiveInterval(3600); // 1시간
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="session_get.jsp">session 확인하기</a>
</body>
</html>