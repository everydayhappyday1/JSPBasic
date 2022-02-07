<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String idCheck = request.getParameter("idCheck");
	
	/* 
		1. id=abc이고 pw=1234이면 로그인 성공으로 간주하고 (user_id, 아이디) 쿠키를 생성
		2. 아이디나 비밀번호가 틀린 경우 다시 로그인 페이지로 리다이렉트
		3. 로그인 성공시 cookie_ex01_welcome으로 리다이렉트 해서 화면에 "id님이 로그인중입니다" 출력 
	*/
	if(id.equals("abc") && pw.equals("1234")){
		Cookie cookie = new Cookie("user_id",id);
		cookie.setMaxAge(600);
		response.addCookie(cookie);
		
		// 아이디 기억하는 쿠키 하나 더 만들기 
		if(idCheck!=null){ // 체크를 했다면
			Cookie check = new Cookie("idCheck",id);
			check.setMaxAge(600); //10분
			response.addCookie(check);
		}
		
		response.sendRedirect("cookie_ex01_welcome.jsp");		
	} else {
		response.sendRedirect("cookie_ex01.jsp");
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