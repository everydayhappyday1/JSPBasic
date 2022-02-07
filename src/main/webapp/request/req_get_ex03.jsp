<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- 
		get 방식은 폼태그가 꼭 필요하지는 않는다. 
		주소를 통해 강제로 파라미터 값을 전달할 수 있다. 
		값이 여러개라면 &조건으로 연결한다. 
		(보안에는 좋지 않다.)
	 -->
	 <a href="req_get_ex04.jsp?name=홍길동&number=12345">get방식으로 값 넘기기</a>
</body>
</html>