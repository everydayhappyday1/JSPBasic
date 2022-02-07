<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
		Date 클래스를 이용해서 이 페이지에 접근한 시간을 XXXX년 XX월 XX일 형태로 생성
		show 라는 이름으로 쿠키 생성 
		quiz01_ok.jsp에 넘어가서 이 쿠키를 화면에 출력 (만약 쿠키가 없아면 출력하지 않아도 됨)
	*/
	Date date = new Date();
	SimpleDateFormat sdf = new SimpleDateFormat("yyyy년MM월dd일");
	String now = sdf.format(date);
	
	Cookie cookie = new Cookie("show",now);
	cookie.setMaxAge(1800); ///30분
	response.addCookie(cookie);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="quiz01_ok.jsp">쿠 키 확 인</a>
</body>
</html>