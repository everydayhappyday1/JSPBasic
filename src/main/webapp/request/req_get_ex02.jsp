<%@page import="java.util.Arrays"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// get방식의 한글화: 좌측 프로젝트 익스플로ㅓ , 서버즈, 톰캣, server.xml 클릭해서 처리 + 서버 재시작
	// get방식은 8버전 이상이라면 처리 안해도 됨. 자동 처리해줌
	// 값을 받을 때는 input태그의 name="xx"인 값을 받는다.
	String id = request.getParameter("iddd");
	String pw = request.getParameter("pwww");
	
	// 체크박스를 받을 때는 values()를 받는다. (체크박스: 반환이 배열)
	String[] agree = request.getParameterValues("agree");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	아이디: <%=id%>
	비 번: <%=pw%>
	화면에서 넘어온 항목: <%=Arrays.toString(agree) %>
</body>
</html>