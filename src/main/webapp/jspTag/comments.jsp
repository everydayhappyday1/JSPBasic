<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	jsp 주석은 개발자도구에서 보이지 않는다.
	<!-- HTML 주석 -->: html 주석은 브라우저에서 f12를 눌렀을 때 화면에 나타난다. 
	<%-- JSP 주석 --%>: html 주석은 브라우저에서 f12를 눌렀을 때 화면에 나타나지 않는다.
	

표현식은 html 주석으로 감싸면 안된다. (f12엥서 확인이 된다.)
jsp 주석으로 감싸야 함.
<%-- 	<%if(true){%>
		<%= "hello" %>
	<%}%> 
--%>

	 
	 
</body>
</html>