package com.servlet;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

// 1. 어노테이션: 서블릿 요청을 구분하는 방법 (바나나 쓰면 웹페이지 주소에 바나나라고 나타남 )
@WebServlet("/Banana") 
public class TestServlet01 extends HttpServlet { // 서블릿 역할을 하기 위해 미리 만들어져있는 HttpServlet을 상속받음 (상속의 장점: 내가 작성 안해도 됨 )
	private static final long serialVersionUID = 1L;
       
	// 기본 생성자
    public TestServlet01() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Hello, world");
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doGet(request, response);
	}

}
