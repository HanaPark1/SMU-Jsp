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
	<script>
		if(<%= request.getParameter("loginCheck")%> != null) {
			alert("아이디 또는 패스워드가 일치하지 않습니다.");
		}
	</script>
		<h2>로그인</h2>
		<form action="./memberOk2.jsp">
			<label>아이디</label>
			<input type="text" name="id"><br>
			<label>패스워드</label>
			<input type="text" name="pw"><br>
			<label>닉네임</label>
			<input type="text" name="nickname"><br>
			<%
				session.setAttribute("session_id", "aaa");
				session.setAttribute("session_name", "홍길동");
				session.setAttribute("session_nickname", "길동스");
			%>
			<label>아이디저장</label>
			<input type="checkbox" name="checkId" value="1">
			<input type="submit" value="전송">
		</form>
	</body>
</html>