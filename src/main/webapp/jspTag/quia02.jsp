<%@page import="java.util.Iterator"%>
<%@page import="java.util.Map"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.Random"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Map.Entry"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%	
	/* 랜덤 로또번호 만들기 
		1. 스크립트릿에 정수를 저장하는 list 선언
		2. 1~45까지 랜덤한 정수를 만들고 리스트 추가
		3. 중복되지 않는 숫자 6개를 저장하면 되는데, 
		   값의 존재 여부는 list.contains(값) 으로 확인
		4. size()가 6이 되면 로또번호가 완성됩니다 (화면에 출력)		
		5. set 구조를 이용하여 한번 더 출력
	*/	
%>


<%
List<Integer> list = new ArrayList<Integer>();
Random ran = new Random();
%>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	while(list.size()<6){
		int num = (ran.nextInt(44)+2);
			if(!list.contains(num)){
				list.add(num);
			}
	}
	%>


	<%
	HashSet<Integer> set = new HashSet<>(); // 중복 X 
	while(set.size() <6){
		set.add(ran.nextInt(45+1));
	}
	%>
	<%=list.toString()%>
	<%=set.toString()%>





</body>
</html>