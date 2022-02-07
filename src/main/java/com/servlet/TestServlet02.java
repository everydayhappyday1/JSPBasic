package com.servlet;


import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

//@WebServlet("/Apple") 
// 2. 어노테이션 말고 web.xml에 서블릿 등록하는 방법
//    좌측 project explorer에서 deployment descriptor: jspbasic 우클릭, generate deployment descriptor stub 클릭
//    src 타고 내려가서 web-inf보면 web.xml 있다. 
public class TestServlet02 extends HttpServlet {
	private static final long serialVersionUID = 1L;

    public TestServlet02() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("hellohello").append(request.getContextPath());
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
