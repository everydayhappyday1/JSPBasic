<%@page import="com.command.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션에 저장된 Student를 얻고
	// Studenet 안데 저장된 name, kor 값만 출력하시오.
	// 스튜던트 타입으로 바꿔줘야 하니까 (Student)로 형변환 , 오브젝트는 그 무엇에도 다 넣을 수 있다.
	Student s = (Student)session.getAttribute("Student");
	String name = s.getName();
	String kor = s.getKor();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%=name %>의 국어점수:<%=kor %>
</body>
</html>