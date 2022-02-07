<%@page import="java.util.Map.Entry"%>
<%@page import="java.util.Set"%>
<%@page import="java.util.HashSet"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@ page import = "java.util.Date"%>
<%@ page import = "java.util.List"%>
<%@ page import = "java.util.ArrayList"%>
<%@ page import = "java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
     지시자 <%--   <%@ %>   --%> : 문서 맨 위에 있다. <br>
     			   language, contentType, pageEncoding 등 정보를 설정할 때 사용한다.<br>
                   패키지 import할때 쓴다. <br>
                    
     <%
     // 날짜객체 생성 (지시자로 임포트 해와야 사용 가능)
     Date date = new Date();
     SimpleDateFormat sdf = new SimpleDateFormat("YYYY-MM-DD"); 
     String now = sdf.format(date); 

     // 리스트 생성 
     List<String> list = new ArrayList<>();
     list.add("홍길동");
     list.add("이순신");
     list.add("신사임당");
     
     // 키는 숫자, 값은 문자열을 가지는 map 생성하고 값 추가 
     Map<Integer, String> map = new HashMap<>();
     map.put(1, "도미노");
     map.put(1, "피잔");
     
     // set (셋은 값의 중복이 안된다. )
     Set<Integer> set = new HashSet<>();
     set.add(1);
     set.add(2);
     %>
     <hr><hr>
     
     표현식으로 출력하기
     시간: <%= now %><br>
     리스트 <%= list.toString() %><br>
     맵: <%= map.toString()  %><br>
     셋: <%= set.toString() %><br>
     <hr><hr>
     
     

     
     
     

     
     
     ????????????????????????????????????????????????????????????????????????
     <h3> 리스트 안에 요소를 순서대로 반복문을 이용해서 출력하시오.</h3>
     <% for(int i=0; i<list.size(); i++){ %>
     	<%= list.get(i)%>
     <% } %>
	 <br><hr>
	 <% for (String s : list){ %>
	 	<%= s %>
	 <% } %> 
     <br><hr>
     
     
     
     
     <hr><hr>
     <h3> Entry 안에 있는 키와 값을 순서대로 출력(검색) 하세요.</h3>
     
     <% Set<Entry<Integer, String>> iter = map.entrySet();
     	for(Entry<Integer, String>  i : iter){%>
     		<%= i.getKey() %>
     		<%= i.getValue() %>
     	 <%}%>
     

     
       
     
</body>
</html>