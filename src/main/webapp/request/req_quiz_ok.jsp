<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// post방식의 한글화 --> 값을 꺼내기 전, 한글화 처리 최초1번 처리
	request.setCharacterEncoding("utf-8");
	
	String id = request.getParameter("idd");
	String pw = request.getParameter("pww");
	String[] agree1 = request.getParameterValues("inter");
	String[] agree2 = request.getParameterValues("interrr");
	String[] agree3 = request.getParameterValues("city");
	String longtext = request.getParameter("looong");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	id: <%=id %><br>
	pw: <%=pw %><br>
	관심분야1: <%=Arrays.toString(agree1) %><br>
	관심분야2: <%=Arrays.toString(agree2) %><br>
	도시: <%=Arrays.toString(agree3) %><br>
	자기소개: <%=longtext %><br>
</body>
</html>