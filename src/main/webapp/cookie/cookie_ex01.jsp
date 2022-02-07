<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
//쿠키: 장바구니, 오늘 하루 이 창을 띄우지 않기 이런 곳에 쓰인다. 중요한 정보에는 쓰지 않는다.
	//idCheck쿠키 꺼내기	
	Cookie[] arr = request.getCookies();
	//idCheck쿠키 null인지 확인하기
	String lastId="";
	if(arr != null){
		for(Cookie c: arr){
			//쿠키찾기
			if(c.getName().equals("idCheck")){
				lastId = c.getValue();
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
	<h3> 쿠키 로그인 연습 (아이디 기억하기) </h3>
	<form action="cookie_ex01_ok.jsp" method="post">
		아이디 : <input type="text" name="id" value="<%= lastId%>"><br> <!-- value="lastId" 직접 값 전달해주는 것, 값 없으면 안나온다. -->
		비번: <input type="password" name="pw"><br>
		<input type="submit" value = "로그인"><br>
		<input type="checkbox" name="idCheck" value ="y"> 아이디 기억하기 
	</form>
</body>
</html>