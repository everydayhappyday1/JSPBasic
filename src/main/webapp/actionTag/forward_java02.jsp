<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	

	// 이 페이지는 처리하는 곳 
	String id = request.getParameter("id");
	//System.out.println(id);
	
	//리퀘스트에 강제값 저장
	request.setAttribute("name", "홍길동");
	
	
	// 포워드 이동
	//RequestDispatcher dp = request.getRequestDispatcher("forward_java03.jsp");
	//dp.forward(request, response); // 얘네 둘을 데리고 넘어간다. 
	
	// 포워드 이동 한줄로 쓰기
	request.getRequestDispatcher("forward_java03.jsp").forward(request, response);
	
%>