<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 로그아웃 1번 방식 
	//session.removeAttribute("user_id");
	//session.removeAttribute("user_nick");
	
	// 로그아웃 2번 방식 
	session.invalidate();
	response.sendRedirect("session_login.jsp");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>