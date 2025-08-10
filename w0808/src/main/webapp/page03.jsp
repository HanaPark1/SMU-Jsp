<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.Date" %>
<%--지시자 %@ : 페이지 속성 --%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>선언식, 표현식</title>
	</head>
	<body>
	<%--선언식 %! : 변수메소드 선언 --%>
		<%! int num=0;
		String str = "abc";
		Date today = new Date();
		%>
		
		<%!
		// 메소드 선언
		public int sum(int a,int b) {
			return a+b;
		}
		%>
		
		<%-- 스크립트릿 %: jsp 페이지 내 자바코드를 실행하고 출력 --%>
		<%
			out.println("num: "+num+"<br>");
			out.println("date: "+today+"<br>");
			out.println("메소드 호출: "+sum(10,5)+"<br>");
		%>
		<table>
			<tr>
				<td>번호</td>
				<td>값</td>
			</tr>
			<tr>
				<td>num</td>
				<td><% out.println(num); %></td>
			</tr>
			<tr>
				<td>num</td>
				<%-- 표현식 %=:페이지에서 값을 출력하는요소 --%>
				<td><%= num %></td>
			</tr>
		</table>
	</body>
</html>