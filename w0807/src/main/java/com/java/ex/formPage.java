package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

@WebServlet("/formPage")
public class formPage extends HttpServlet {
	protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doAction으로 호출되어 실행되었습니다.!!!");
		String id = request.getParameter("id");
		String name = request.getParameter("name");
		String pw = request.getParameter("pw");
		
		response.setContentType("text/html");
		PrintWriter writer = response.getWriter();
		
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<meta charset=\"UTF-8\">");
		writer.println("<title>응답페이지</title>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<h2>입력정보</h2>");
		writer.println("<p>아이디: "+id+"</p>");
		writer.println("<p>이름: "+name+"</p>");
		writer.println("<p>비밀번호: "+pw+"</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
		}
	
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet으로 호출되어 실행되었습니다.!!!");
		doAction(request, response);
		}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost로 호출되어 실행되었습니다.!!!");
		doAction(request, response);
		}

}
