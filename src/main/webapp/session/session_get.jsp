<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 세션 사용하기
	String user_id = (String)session.getAttribute("user_id"); // objdct는 어떤 것에든 저장이 가능하다. 그래서 스트링에 저장, 대신 클래스 캐스팅 해줘야 함
	session.getAttribute("pw");
	String user_name = (String)session.getAttribute("user_name");
	
	// 세션 유효기간 확인
	int time = session.getMaxInactiveInterval();
	
	// 특정 세션 삭제
	session.removeAttribute("user_name"); // f5눌러 새로고침 하면 홍길동 --> null이 된 것을 확인 가능 
	
	// 모든 세션 삭제 (무효화)
	session.invalidate();
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	세션에 저장된 id: <%=user_id %> <br>
	세션에 저장된 name: <%=user_name %> <br>
	세션 유효기간 : <%=time %>
</body>
</html>