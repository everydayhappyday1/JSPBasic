package com.servlet;

import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/OutServlete")
public class OutServlete extends HttpServlet {
	private static final long serialVersionUID = 1L;
    public OutServlete() {
        super();

    }
    
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		//response.getWriter().append("Served at: ").append(request.getContextPath());
		
		//브라우저에 out 객체를 사용해서 데이터를보낼 때 문서에 대한 내용을 명시해줘야 한다.
		response.setCharacterEncoding("utf-8"); // 한글처리 (jsp 맨 윗부분과 같다.)
		response.setContentType("text/html"); // html을 쓸거야 (jsp 맨 윗부분과 같다.)
		
		PrintWriter out =response.getWriter();
		out.println("hello world"); //브라우저에서 출력된다. 
		out.println("<h2>헬로월드?</h2>");
		
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
