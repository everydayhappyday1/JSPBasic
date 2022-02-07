<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	/*
	1. 앞에서 넘어온 폼값을 받아서 평균을 구합니다.
	2. 포워드를 이용해서 평균값을 넘겨주도록 처리합니다.
	평균이 60점 이상이면 score_quiz03으로 이동해서
		~~님 평균은 xx점 합격입니다 를 출력
	평균이 60점 이하라면 score_quiz04으로 이동해서
		~~님 평균은 xx점 불합격입니다 를 출력
		
	조건: 세션을 사용하지 않습니다.		
	*/
	request.setCharacterEncoding("utf-8");

	// 값을 받아옴
	String name = request.getParameter("name");
 	int kor = Integer.parseInt(request.getParameter("kor"));
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	
	// 평균값 처리
	int avg=(kor+eng+math)/3;
	
	//리퀘스트에 강제값 저장
	request.setAttribute("avg", avg);
	
	//if(avg >=60){
		//리퀘스트에 강제값 저장
	//	request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
	//}else{
	//	request.getRequestDispatcher("score_quiz04.jsp").forward(request, response);
	//}
	
	//리퀘스트에 강제값 저장
	request.setAttribute("avg", avg);
	request.getRequestDispatcher("score_quiz03.jsp").forward(request, response);
	
%>
