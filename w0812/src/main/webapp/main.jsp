<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>Insert title here</title>
		<style>
		  table,th,td{border:1px solid black; border-collapse: collapse;}
		  th,td{width:200px; height:40px;}
		  table{width:500px; margin:0 auto;}
		</style>
	</head>
	<body>
		<% if(session.getAttribute("session_id") == null) { %>
		<table>
		   <tr>
		     <th colspan="2">로그인을 하셔야 사용가능합니다.</th>
		   </tr>
		 </table>
		  <%}else{%>
		 <table>
		 <tr>
		     <th colspan="2">로그인 성공</th>
		   </tr>
		   <tr>
		     <th>아이디</th>
		     <td><%= request.getParameter("id") %></td>
		   </tr>
		   <tr>
		     <td>패스워드</td>
		     <td><%= request.getParameter("pw") %></td>
		   </tr>
		   <tr>
		     <td>닉네임</td>
		     <td><%= request.getParameter("nickname") %></td>
		   </tr>
		    <tr>
		     <th colspan=2><a href="./logout.jsp">로그아웃</a></th>
		   </tr>
		 </table>
		 <% } %>
		 <a href="./login.jsp"><p>회원가입 이동</p></a>
	</body>
</html>