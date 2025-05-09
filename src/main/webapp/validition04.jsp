<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 검사</title>
<script>
	function checkLogin() {
        var form = document.loginForm;
        var id = form.id.value;
        var pw = form.password.value;

        // 아이디 길이 검사
        if (id.length < 4 || id.length > 12) {
            alert("아이디는 4~12자 사이로 입력해야 합니다.");
            form.id.select();
            return false;
        }

        // 아이디 문자 검사: 영문자와 숫자만 허용
        for (var i = 0; i < id.length; i++) {
            var ch = id.charAt(i);
            if (!((ch >= 'A' && ch <= 'Z') || (ch >= 'a' && ch <= 'z') || (ch >= '0' && ch <= '9'))) {
                alert("아이디는 영문자와 숫자만 입력 가능합니다.");
                form.id.select();
                return false;
            }
        }

        // 비밀번호 숫자만 검사
        if (isNaN(pw) || pw.length === 0) {
            alert("비밀번호는 숫자로만 입력 가능합니다.");
            form.password.select();
            return false;
        }

        return true; // 유효성 통과 → submit 진행
    }
</script>
</head>
<body>
	<form action="validition03_process.jsp" method="post" name="loginForm">
		<p>아이디: <input type="text" name="id" /></p>
		<p>비밀번호: <input type="password" name="password" /></p>
		<p><input type="submit" value="전송" onclick="return checkLogin()" /></p>
	</form>
</body>
</html>
