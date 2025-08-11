<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%> <!-- 지시자 -->
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%-- JSP 주석 --%>
		<!-- html 주석 -->
		<%! // 선언식
			int a = 10;
			String method() {
				return "안녕하세요.<br>";
			}
		%>
		
		<%
		
			for(int i=0; i<10; i++) {
				out.println(i+"<br>");
			}
			
		%>
		
		<tabel>
			<tr>
				<th>변수</th>
				<th>값</th>
			</tr>
			<% for(int i=0; i<10; i++) {%>
				<tr>
				<!-- 표현식 -->
					<td>변수</td>
					<td><%= i*10 %></td>
				</tr>
			<% }%>
		</tabel>
	</body>
</html>