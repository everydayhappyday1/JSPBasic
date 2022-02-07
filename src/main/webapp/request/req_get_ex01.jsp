<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 사용자에게 보여줄 페이지 작성 -->
	<!-- 사용자로부터 값을 받을 때는 form 태그를 이용한다. -->
	<!-- action: 지정된 페이지의 경로가 들어간다. -->
	<form action="req_get_ex02.jsp"> <!-- 값을 받아주는 페이지 경로 req_get_ex02 , form태그 값을 가지고 req_get_ex02로 넘어간다. -->
		아이디: <input type="text" name="iddd" value="미리가질 값"><br>
		비밀번호: <input type="password" name="pwww"><br><hr>
		
		동의항목:
		<input type ="checkbox" name ="agree" value="조항1">동의 1
		<input type ="checkbox" name ="agree" value="조항2">동의 2
		<input type ="checkbox" name ="agree" value="조항3">동의 3
		<br>
		
		<input type ="submit" value ="전송">
	</form>
</body>
</html>