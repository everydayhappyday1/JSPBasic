<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	String[] seat = request.getParameterValues("seat");

	// list 생성 (좌석정보 저장 용도)
	ArrayList<String> list = new ArrayList<>();
	
	// 예약된 값이 있다면 위의 생성한 리스트에 덮어쓴다.
	if(application.getAttribute("list") != null ){
		list = (ArrayList<String>)application.getAttribute("list");
	}
	
	// 임시 저장용 사본 리스트 생성 
	ArrayList<String> temp = new ArrayList<>(); 
	
	// seat과 list를 비교
	for(String s : seat){
		if(list.contains(s)){ // 포함이면 true
			break;
		}else { // 포함되지 않았다면 false 
			temp.add(s);
		}
	}
	
	// 중복이 없다는 것은? temp배열과 위의 seat 배열을 비교해본다. seat.길이() == temp.size ()라면 중복이 없다는 뜻.
	if(seat.length == temp.size()){
		//temp값을 list에 추가해줌 (사본 리스트를 전부 추가)
		list.addAll(temp); // 
	}
	
	// application에 추가한 list정보를 저장한다. 
	application.setAttribute("list", list);
	
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<div align = "center">
		<h3>선택한 좌석</h3>
		<% for(String s : seat){ %>
			<b> <%=s %></b>
		<%} %>
	</div>
	<br>
	<h3>신청 결과</h3>
	<%=seat.length == temp.size() ? "<b>성공</b>" : "<b>실패</b>" %>
	<a href="reserve.jsp" >다시 예약하기</a>
</body>
</html>