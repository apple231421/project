<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	%>
	<p>
		<%=id%><br> 아이디 :
		<%=pw%><br> 비밀번호 :
		<%=request.getContentLength()%><br> 클라이언트 전송 방식 :
		<%=request.getMethod()%><br> 요청 URI :
		<%=request.getRequestURI()%><br> 서버 이름 :
		<%=request.getServerName()%><br> 서버 포트 :
		<%=request.getServerPort()%><br>
	</p>
</body>
</html>