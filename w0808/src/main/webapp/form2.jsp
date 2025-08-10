<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<form action="/w0808/doForm.jsp" method="post">
		<label>아이디</label>
		<input type="text" name="id"><br>
		<label>패스워드</label>
		<input type="text" name="pw"><br>
		<label>이름</label>
		<input type="text" name="name"><br>
		<label>성별</label><br>
		<input type="radio" name="gender" id="man" value="man">
		<label for="man">남자</label><br>
		<input type="radio" name="gender" id="woman" value="woman">
		<label for="woman">여자</label><br>
		
		<label>취미</label><br>
		<input type="checkbox" name="hobby" id="game" value="게임">
		<label for="game">게임</label><br>
		<input type="checkbox" name="hobby" id="golf" value="골프">
		<label for="golf">골프</label><br>
		<input type="checkbox" name="hobby" id="swim" value="수영">
		<label for="swim">수영</label><br>
		<input type="checkbox" name="hobby" id="book" value="독서">
		<label for="book">독서</label><br>
		
		<input type="submit" value="전송"><br>
	</form>
</body>
</html>