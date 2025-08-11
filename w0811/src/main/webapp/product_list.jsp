<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
	
	<table>
		<tr>
			<th colspan=2>쿠키확인</th>
		</tr>
		<tr>
			<th>쿠키이름</th>
			<th>쿠키값</th>	
		</tr>
		<%
		Cookie[] cookies = request.getCookies();
		if (cookies != null) {
			for (Cookie cookie: cookies) { %>
		<tr>
			<td><%= cookie.getName() %></td>	
			<td><%= cookie.getValue() %></td>	
		</tr>
		<% } 
			} else { %>
			<tr>
				<td>쿠키가 없습니다.</td>	
			</tr>
		<%} %>
		<tr>
			<td colspan=2>
				<a href="./product.jsp">장바구니</a>
			</td>
		</tr>
		
	</table>
	</body>
</html>