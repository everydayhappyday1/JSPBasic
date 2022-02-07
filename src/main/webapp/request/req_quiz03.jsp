<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>req_quiz03.jsp</h2>
	<p>다음을 구현하고 a태그 클릭시 req_quiz03_ok에서 해당 학생의 숫자를 출력하시오.</p>
	
	
	<%for(int i=1; i<=30; i++){%>
		<a href="req_quiz03_ok.jsp?nummm=<%=i%>"><%=i %>번 학생</a><br>
	<%}%>
	


</body>
</html>