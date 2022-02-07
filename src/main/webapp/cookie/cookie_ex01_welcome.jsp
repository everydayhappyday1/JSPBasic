<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 쿠키 꺼내기	
	Cookie[] arr = request.getCookies();
	// 쿠키 null인지 확인하기
	String id="";
	if(arr != null){
		for(Cookie c: arr){
			if(c.getName().equals("user_id")){
				id = c.getValue();
			}
		}
	}
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	로그인 성공
	<%=id %> 님이 로그인 했습니다.
</body>
</html>