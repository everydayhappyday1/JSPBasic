<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- post방식은 주소에 주고받는 데이터 값이 표기가 되지 않는다. (보안) -->
	<form action="req_post_ex02.jsp" method="post"> <!-- form태그의 기본은 get방식, post로 보내려면 method="post"를 쓴다. -->
		ID: <input type="text" name="id"><br>
		PW: <input type="text" name="pw"><br>
		<input type = "submit" value="전송">
	</form>
</body>
</html>