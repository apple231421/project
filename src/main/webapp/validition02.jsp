<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script>
	function checkLogin() {
       	var form = document.loginForm;
       	if (form.id.value == "") {
       		alert("아이디를 입력하세요");
       		form.id.focus();
       		return false;
       	}else if (form.password.value == "") {
       		alert("비밀번호를 입력하세요");
       		form.password.focus();
       		return false;
       	} 
       	form.submit(); //validition02_process.jsp  이동함
    }
</script>
</head>
<body>
	<form action="validition02_process.jsp" method="post" name="loginForm">
	<p> 아이디:<input type="text" name="id" /></p>
	<p> 비밀번호:<input type="password" name="password" /></p>
	<p><input type="submit" value="전송" onclick="return checkLogin()"/></p>
	</form>
</body>
</html>