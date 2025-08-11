<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		<title>로그인 - 쿠키 저장</title>
	</head>
	<body>
	<%
		//데이터 읽어오기
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		
		
		if(request.getParameter("checkId") != null) {
			String checkId = request.getParameter("checkId");
			if(checkId.equals("1")) {
				// 쿠키저장
				// 쿠키 객체선언
				Cookie cookie = new Cookie("save_id",id);
				// 쿠키 시간설정
				cookie.setMaxAge(60*60*24);
				// 쿠키저장
				response.addCookie(cookie);
			}
		} else {
			Cookie[] cookies = request.getCookies();
			for(Cookie cookie:cookies) {
				if(cookie.getName().equals("save_id")) {
					cookie.setMaxAge(0);
					response.addCookie(cookie);
				}
			}
		}
	%>
	<a href="./login.jsp">로그인페이지 이동</a>
	</body>
</html>