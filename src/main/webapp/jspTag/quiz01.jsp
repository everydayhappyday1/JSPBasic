<%@ page import = "java.util.Random" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%! int total=0; %> 
<% 
total ++; 

Random rnd = new Random();
int dan = (rnd.nextInt(8)+2);
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<!-- <%if(dan < 0) dan *= (-1);%>  -->
	
	<%= total %>번째 방문자입니다.
	<%if(total%10 == 0){%>
		<p>당첨되었습니다.</p>
		<%}%>	
		<hr>
	랜덤구구단 <%=dan%> 단
	<%if(dan > 0){%>
		<% for(int j=1; j <=9; j++){%>
			<br>
			<%=dan%> * <%=j%> = <%= dan*j%><br>
			<%	}%>
		<%}%>
	
	
</body>
</html>