<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
			table, th, td {
				border: 1px solid black;
			}
			th, td {
			color: red;
			width: 200px;
			height: 150px;
			}
		</style>
	</head>
<body>
	<table>
		<tr>
			<th>번호</th>
			<th>제목</th>
		</tr>
		<tr>
		<% for(int i=1; i<=10; i++) {
			out.println("<tr>");
			out.println("<td>"+i+"</td>");
			out.println("<td>jsp"+i+"</td>");
			out.println("</tr>");
		}
		%>
		</tr>
	</table>
</body>
</html>