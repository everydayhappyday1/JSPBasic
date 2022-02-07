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
	<h3>포워드 3페이지</h3>
	<%=id %><br>
	<%=pw %><br>
	널이 뜨지 않는다. 2페이지에서 포워드를 사용했기 때문 (request값을 들고다님) 
	주소는 2페이지에 남아있지만, 실제로는 3페이지를 보여줌
</body>
</html>