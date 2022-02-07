<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// post방식의 한글화 --> 값을 꺼내기 전, 한글화 처리 최초1번 처리
	request.setCharacterEncoding("utf-8");
	

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id: <%=id %>
	pw: <%=pw %>
</body>
</html>