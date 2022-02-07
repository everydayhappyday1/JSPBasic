<%@page import="com.command.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	// 클래스를 사용하여 한번에 세션에 저장
	// 자바 클래스는 scr/main/java 폴더에 만든다. 패키지는 com.command로 했다. 
	String name = request.getParameter("name");
	String eng = request.getParameter("eng");
	String kor = request.getParameter("kor");
	String math = request.getParameter("math");
	
	// 세션에 저장하기 전에 Student 클래스에 값을 저장한다.
	// 자바 파일은 scr/main/java에 저장
	// 나는 com.command 패키지에 Student 생성
	Student stu = new Student(name, eng, kor, math);
	session.setAttribute("Student", stu);
	
	// 페이지 이동
	response.sendRedirect("quiz01_result.jsp"); 
	
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