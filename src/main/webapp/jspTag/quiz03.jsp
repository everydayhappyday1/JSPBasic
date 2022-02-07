<%@page import="java.util.ArrayList"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Random"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%!
	Random ran = new Random();
	
	//랜덤한 참가자 명단 
	String[] jobs = {"어피치","라이언","무지","제이지","프로도","튜브"};
	
	//참가자가 저장될 list
	List<String> list = new ArrayList<>();
	
	
	

%>
<%
/* 
	1. 랜덤한 참가자를 추출해서 list 순서대로 저장한다.
	2. 마지막에 참가한 사람과 중복된 사람의 명단을 숫자로 출력한다. 
	3. 리스트 크기가 10이되면 list.clear() 이용해서 리스트를 비운다.
*/


int r = ran.nextInt(5); // 0~5
list.add(jobs[r]); // 뽑은걸 리스트에 넣어줌 

int count = 0 ;
for(String s: list){
	if(s.equals(jobs[r])){
	count++;
}
}


%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	현재리스트: <%=list.toString() %>
	<%= jobs[r] %>님 입장, 현재 같은 카카오 프렌드는 <%=count%>명 입니다. 
	
	<%
		// 크기가 10이면 출력 후 요소 삭제.
		if(list.size()==10){
			list.clear();
		}
	%>



</body>
</html>