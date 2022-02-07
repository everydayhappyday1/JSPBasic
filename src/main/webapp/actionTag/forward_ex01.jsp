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
		액션태그는 JSP에서 동작을 지시하는 태그입니다.
		시작이 <JSP: 시작하고, 종속되는 태그가 없으면 /> 마감처리한다.
	-->
	<jsp:forward page="forward_ex02.jsp" />
	<!-- 
	여기서 실행했으나 forward_ex02페이지가 열린다. 그쪽으로 보냈기 때문, 근데 주소값은 ex01로 찍힘 
	리다이렉트: 페이지 이동
	포워드: 페이지 이동 
	리다이렉트와 포워드는 완전 다르다. 무엇이 다른가?
	
	request의 생명주기에서 차이가 있음.
	본래 request의 생명주기는 딱 다음 페이지까지이다. 
	그래서 redirect에서 request 사용했을 때 딱 다음 페이지까지 넘어간다.
	
	forward는 request를 1페이지에서 사용해도 3페이지 갔을 때 값이 유효하다. 
	한마디로 
	1페이지에 있는 폼태그의 name 값을 2페이지, 3페이지에서도 받을 수 있따.
	왜? 2페이지의 request를 통채로 들어서 3페이지까지 넘겨주기 때문.
	
	좌측 프로젝으 익스플로러에서 send_vs_forward파일 가서 확인하자.
	-->
</body>
</html>