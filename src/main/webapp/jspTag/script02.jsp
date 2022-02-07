<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
		for (int i = 1; i<= 10; i++){
			out.println(i);
		}
	%>
	
	
	<br><hr>
	<!-- 위 내용을 표현식으로 바꾼다면  -->
	<% for (int i = 1; i<= 10; i++){ %>
		<%=i%><br>
	<% } %>
	
	
	<br><hr>
	<!-- 표현식으로 구구단 표현하기 -->
	<% for (int i = 1; i<= 10; i++){ %>
		3 X <%=i%> = <%= 3* i%><br>
	<% } %>
	
	
	<br><hr>
	<!-- 표현식으로 표현하기 -->
	1. 중첩 반복문을 사용해서 2~9단까지 표현식을 적용하여 출력 <br>	
	<% for (int i = 2; i<= 9; i++){ %>
		<% for (int j = 1; j<= 10; j++){ %>
			<strong><%=i%> 단</strong> &nbsp;&nbsp;&nbsp;
			<%=i%> * <%=j%> = <%= i*j%><br>
		<% } %>
	<% } %>
	<br><hr>
	2. 반복문으로 체크박스 20개를 만드는데, 이름을 붙여서 출력 (체크박스 1, 체크박스 2, ...)
	<%for (int k = 1; k<=20; k++){%>
		<form><table>
			<tr>
				<td>체크박스 <%=k%></td>
				<td>
					<input type = "checkbox" name = "A">
				</td>
			</tr>
		</table></form>
		<%-- 선생님 --%>
		<input type = "checkbox" name = "A">체크박스<%=k%>
	<%}%>
	
	
	
	
	
	
</body>
</html>