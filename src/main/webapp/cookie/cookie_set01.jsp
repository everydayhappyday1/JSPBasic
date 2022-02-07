<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 생성 문법
	// 1. 쿠키 생성 (이름, 값)   -> 이름과 값을 만듦과 동시에 지정해야 함 
    Cookie cookie = new Cookie("user_id","kkk123");
	
	// 2. 속성 설정
	cookie.setMaxAge(3600); // 1시간 지속
	
	// 3. 쿠키를 response에 저장
	response.addCookie(cookie);
	

	//두 번째 쿠키
	Cookie cookie2 = new Cookie("thez","이주연");
	cookie2.setMaxAge(20); // 20초 지속
	response.addCookie(cookie2);
	
	
%>
<!DOCTYPE html>
<html> 
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<a href="cookie_get01.jsp">쿠키확인해보기</a>
	<!-- 
		페이지 실행, f12 눌러서 개발자 도구 실행, 상단 툴에서 Application 클릭, 좌측 틀에서 Cookies 클릭하면 누가 어떤 아이디로 값을 뭘 들고 들어왓는지 확인 가능 
	 -->
</body>
</html>