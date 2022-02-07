<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
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
	<h3>3페이지</h3>
	<%=id %><br>
	<%=pw %><br>
	널이 뜨는 이유: redirect는 다음 페이지까지밖에 request를 데리고 가지 못한다. 
	포워드 사용해야함
</body>
</html>