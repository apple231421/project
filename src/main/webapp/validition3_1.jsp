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
       	if (form.id.value.length < 4 || form.id.value.length > 12) {
       		alert("아이디는 4~12자 이내로 입력이 가능합니다");
       		form.id.focus();
       		return false; // 폼제출 중단
       	}
       	if (form.password.value.length < 8 ) {
       		alert("비밀번호는 8자 이상으로 입력이 가능합니다");
       		form.password.focus();
       		return false; // 폼제출 중단
       	}
        
   	retrun true; // 유효성 검사 통과 -> 폼 제출 진행
    }
</script>
</head>
<body>
	<form action="validition03_process.jsp" method="post" name="loginForm" onsubmit="return checkLogin()">
	<p> 아이디:<input type="text" name="id" /></p>
	<p> 비밀번호:<input type="password" name="password" /></p>
	<p><input type="submit" value="전송" /></p>
	<!-- return checkLogin() -> checkLogin 함수 결과에 따라 결정 -->
	</form>
</body>
</html>