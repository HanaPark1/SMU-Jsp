package com.java.ex;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

/**
 * Servlet implementation class Page01
 */
@WebServlet("/Page01")
public class Page01 extends HttpServlet {
	// doGet, doPost들어오던지 항상 doAction을 실행시켜보세요.
		protected void doAction(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("doAction으로 호출되어 실행되었습니다.!!!");
			response.setContentType("text/html");
			PrintWriter writer = response.getWriter();
			
			writer.println("<html>");
			writer.println("<head>");
			writer.println("<meta charset=\"UTF-8\">");
			writer.println("<title>서블릿 실행</title>");
			writer.println("</head>");
			writer.println("<body>");
			writer.println("<h2>서블릿페이지</h2>");
			writer.println("<p>서블릿에서 페이지를 제작하여 실행시켰습니다.</p>");
			writer.println("</body>");
			writer.println("</html>");
			
			writer.close();
			
		}
		// get방식으로 들어올때 호출
		protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("doGet으로 호출되어 실행되었습니다.!!!");
			doAction(request, response);
		}

		// post 방식으로 들어올 때 호출
		protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
			System.out.println("doPost로 호출되어 실행되었습니다.!!!");
			doAction(request, response);
			
					
		}
		
}
