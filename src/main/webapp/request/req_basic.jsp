<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	// request 객체는 자동으로 생성됨.
	// request에 점만 찍으면 된다.
	StringBuffer url = request.getRequestURL(); // url값
	
	String uri = request.getRequestURI(); // uri값
	
	String path = request.getContextPath(); // parh 값
	
	String addr = request.getRemoteAddr(); // 클라이언트 접속 ip를 얻을 수 있음
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	url : <%=url%> : 화면을 보기 위한 접속 주소  <br>
	uri : <%=uri%> : url - 포트 = uri값 <br>
	path: <%=path%> : 프로젝트가 여러개일 수 있다. 톰캣이 해당 프로젝트를 구분하기 위해 이름을 붙이는데, 그게 path, 한 마디로 톰캣의 경로 <br>
	
	addr: <%=addr%> : 클라이언트의 접속주소 <br>
</body>
</html>