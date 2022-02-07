<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
		1. 아이디, 비밀번호, 닉네임을 받는다.
		2. 아이디랑 비밀번호가 동일하면 (user_id, id)를 저장하는 세션 생성
		   (user_nick, 넥네임) 세션을 생성한다.
		   
		session_welcome페이지로 리다이렉트해서 아이디와 닉네임 찢기
		틀린 경우 로그인 페이지로 리다이렉트 
	*/
	request.setCharacterEncoding("utf-8");

	// 값 받아오기
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String nick = request.getParameter("name");
	
	if(id.equals(pw)){ // 성공
		session.setAttribute("user_id", id);
		session.setAttribute("user_nick", nick);
		
		response.sendRedirect("session_welcome.jsp");
	}else{
		response.sendRedirect("session_login.jsp");
	}

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