<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// 특정 쿠키 사용하기
	Cookie[] arr = request.getCookies();
	// 쿠키가 null이면 에러이다.
	// 그래서 쿠키를 사용하기 전에 null 체크 우선
	String id = ""; //쿠키값을 저장할 변수 
	if(arr != null){
		for(Cookie c: arr){
			// 이름이 user_id인 쿠키를 찾는다.
			
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
	user id의 쿠키값: <%=id %>
</body>
</html>