<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>폼</h2>
		<form action="/w0807/formPage" method="get">
			<label>이름</label>
			<input id="name" name="name" type="text"><br>
			<label>아이디</label>
			<input id="id" name="id" type="text"><br>
			<label>비밀번호</label>
			<input id="pw" name="pw" type="text"><br>
			<input type="submit" value="전송">
		</form>
</body>
</html>