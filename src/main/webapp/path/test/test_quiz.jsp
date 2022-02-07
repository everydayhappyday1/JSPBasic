<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- a태그를 이용해서 req_video페이지로 상대경로, 절대경로로 이동 -->
	<a href="../../request/req_video.jsp">req_video_상대경로</a><br>
	<a href="/JSPBasic/request/req_video_ok.jsp">req_video_절대경로</a><br>
	
	<!-- a태그를 이용해서 TestServlet01로 상대경로, 절대경로로 이동 -->
	<a href="../../Banana">서블릿 이동상대경로</a><br>
	<a href="/JSPBasic/Banana">서블릿 이동절대경로</a><br>
	
	<!-- img태그를 이용해서 java.png로 상대경로, 절대경로로 이동 -->
	<a><img src="../../request/img/java.png"></a><br>
	<a><img src="/JSPBasic/request/img/java.png"></a><br>
	
</body>
</html>