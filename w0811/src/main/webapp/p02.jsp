<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>request, response 객체</title>
	</head>
	<body>
	<!--  request -->
	<%
		out.println("서버명: "+request.getServerName()+"<br>");
		out.println("프로젝트명: "+request.getContextPath()+"<br>");
		out.println("섹션명: "+request.getSession()+"<br>");
		out.println("요청URL: "+request.getRequestURL()+"<br>");
		out.println("요청URI: "+request.getRequestURI()+"<br>");
		out.println("ip주소: "+request.getRemoteAddr()+"<br>");
		
		out.println("파일명: "+request.getRequestURI().substring(request.getContextPath().length()+1)+"<br>");
		out.println(request.getServerName());
	
	%>
	
	</body>
</html>