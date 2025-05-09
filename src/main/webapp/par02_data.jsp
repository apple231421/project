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
	String title = request.getParameter("title");
	%>
	<p>
		<%=java.net.URLDecoder.decode(title, "UTF-8")%></p>
		Today is = <%=request.getParameter("date")%></p>
</body>
</html>
