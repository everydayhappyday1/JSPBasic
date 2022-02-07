<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String xxx = request.getParameter("xxx");
	int num = Integer.parseInt(xxx); // xxx는 null값 
	// 500 에러는 콘솔창가서 에러를 확인하세요 
%>

<!-- 에러나면 에러페이지로 보내라 -->
<%@ page errorPage="error_view.jsp" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	
</body>
</html>