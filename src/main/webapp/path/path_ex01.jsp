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
		절대경로: 프로젝트의 전체경로 (ip주소, port 번호를 제외한/ 컨택스트패스로부터 시작) 프로젝트를 구분하는 단위부터 시작함 
		상대경호: 현재 위치에서 다른 파일을 참조하여 찾아가는 표현형식 (내 위치에서 찾아감.)
	 -->

	<h3>path_ex01 페이지</h3>
	<a href="path_ex02.jsp">path_ex02페이지 (상대경로)</a>
	<a href="/JSPBasic/path/path_ex02.jsp">path_ex02페이지 (절대경로)</a>
	<a href="<%=request.getContextPath()%>/path/path_ex02.jsp">path_ex02페이지 (절대경로)</a>
	
</body>
</html>