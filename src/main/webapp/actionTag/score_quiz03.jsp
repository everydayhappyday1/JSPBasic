<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String name = request.getParameter("name");
	int avg = (int)request.getAttribute("avg");
	

%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%= name %>님의 평균점수는 <%= avg %>입니다. 
	<% if(avg >= 60){ %>	
		<b>합격입니다.</b>
	<% } else if(avg <60){%>
	<% } %>
</body>
</html>