<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Arrays" %>

<%@ page import="java.net.URLEncoder" %>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table, th, td {
				border: 1px solid black;
				border-collapse: collapse;
			}
			th, td {
				width: 200px;
				height: 150px;
			}
		</style>
	</head>
	<body>
		<%
			request.setCharacterEncoding("UTF-8"); // POST 한글 처리
		    String name = URLEncoder.encode(request.getParameter("name"), "UTF-8");
			
			int age = Integer.parseInt(request.getParameter("age"));
			
			if (age >= 18) {
				// 파라미터 전송
				response.sendRedirect("./result.jsp?name="+name+"&age="+age);
			} else {
				response.sendRedirect("./resultNot.jsp?name="+name+"&age="+age);
			}
		%>
	</body>
</html>