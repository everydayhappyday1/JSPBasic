<%@page import="java.util.UUID"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션저장
	// 어플리케이션 저장
	// 차이: 똑같이 하나로 공유되어야 하는 것들은 어플리케이션에 저장한다. (예약결과)
	
	
	
	// 랜덤 문자값 뽑는 유틸 클래스
	// UUID : 랜덤한 16진수 문자값
	UUID uuid = UUID.randomUUID();
	
	//문자열 자르기
	//split
	String[] arr = uuid.toString().split("-"); // -단위로 자른다.
	String ran = arr[1]; //1번 인덱스 값을 ran에 저장한다. 
	
	// 세션에 ran값 저장 (세션 이름: auth)
	session.setAttribute("auth", ran);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>인증페이지</h2><hr>
	<form action="auth_ok.jsp" method="post">
		<%=uuid %><br>
		인증문자값: <%=ran%><br>
		인증문자 입력: <input type="text" name="code" size="10"><br>
		<input type="submit" value="인증하기"><br>
	</form>
</body>
</html>