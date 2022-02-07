<%@page import="com.command.Student"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/* 
		form으로 넘어온 값과 session에 저장된 값을 비교하여
		같은 값이라면 authYN이라는 인증 성공 session을 생성하고
		reserve.jsp로 리다이랙트 한다.
		
		두 값이 다르면 다시 인증페이지로 리다이랙트 
	*/

	
	String code = request.getParameter("code");
	String auth = (String)session.getAttribute("auth");
	
	if(code.equals(auth)) {
		//인증세션
		session.setAttribute("authYN", true);
		
		response.sendRedirect("reserve.jsp");
		
	} else { //
		response.sendRedirect("auth.jsp");
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