<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("utf-8");

// 1. id, pw를 받아서 처리한다. 문자열 비교 equls를 이용 
String id = request.getParameter("id");
String pw = request.getParameter("pw");

// 2. id가 abc1234이고, 비밀번호가 asd123 이라면 로그인 성공으로 간주하고 res_ex02_welcome으로 리다이렉트
// 3. id가 틀린경우 res_ex02_id_fail페이지로 리다이렉트
// 4. pw가 틀린경우 res_ex02_pw_fail로 리다이렉트
	
	if(id.equals("abc1234") && pw.equals("asd123")){
		response.sendRedirect("res_ex02_welcome.jsp");
	}else if (!id.equals("abc1234")){
		response.sendRedirect("res_ex02_id_fail.jsp");
	}else if (!pw.equals("asd123")){
		response.sendRedirect("res_ex02_pw_fail.jsp");
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