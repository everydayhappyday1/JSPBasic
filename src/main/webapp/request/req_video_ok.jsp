<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%
	// movemove 파라미터 값을 받아서 
	// 각 데이터별로 알맞은 화면을 보여주도록 처리하시오.
String m = request.getParameter("movemove");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2 align="center"><%=m%>번 영상</h2> 
	<%if (m == null){ %>
	<p>잘못들어왔어요, 다시 클릭해주세요.</p>
	<%}else if(m.equals("theboyz1")){%>	
	<div align="center">
		<h2>더보이즈</h2><hr>
		<p>주연</p>
		<iframe width="540" height="260" src="https://www.youtube.com/embed/IugnBvDn2P0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<%} else if(m.equals("theboyz2")){%>	
	<div align="center">
		<h2>더보이즈</h2><hr>
		<p>주연</p>
		<iframe width="540" height="260" src="https://www.youtube.com/embed/IugnBvDn2P0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<%} else if(m.equals("theboyz3")){%>	
	<div align="center">
		<h2>더보이즈</h2><hr>
		<p>주연</p>
		<iframe width="540" height="260" src="https://www.youtube.com/embed/IugnBvDn2P0" title="YouTube video player" frameborder="0" allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture" allowfullscreen></iframe>
	</div>
	<%}%>
</body>
</html>

