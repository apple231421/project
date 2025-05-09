<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인 검사</title>
<script>
function checkMember() {
	var regExpId = /^[a-zA-Z0-9]+$/;
	var regExpName = /^[가-힣]+$/;
	var regExpPasswd = /^[a-zA-Z0-9]{6,}$/;
	var regExpPhone = /^\d{3}-\d{3,4}-\d{4}$/;
	var regExpEmail = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	var form = document.Member;

	var id = form.id.value;
	var password = form.password.value;
	var name = form.name.value;
	var phone = form.phone1.value + "-" + form.phone2.value + "-" + form.phone3.value;
	var email = form.email.value;

	if (!regExpId.test(id)) {
		alert("아이디는 영문자와 숫자만으로 만들어야 합니다.");
		form.id.focus();
		return false;
	}
	if (!regExpPasswd.test(password)) {
		alert("비밀번호는 영문자와 숫자를 포함해 6자 이상이어야 합니다.");
		form.password.focus();
		return false;
	}
	if (!regExpName.test(name)) {
		alert("이름은 한글만 사용할 수 있습니다.");
		form.name.focus();
		return false;
	}
	if (!regExpPhone.test(phone)) {
		alert("전화번호는 010-xxxx-xxxx 형식으로 입력해야 합니다.");
		form.phone2.focus();
		return false;
	}
	if (!regExpEmail.test(email)) {
		alert("이메일 형식이 올바르지 않습니다.");
		form.email.focus();
		return false;
	}
	
	alert("회원 가입이 완료되었습니다.");
	form.submit();
}
</script>
</head>
<body>
	<h3>회원 가입</h3>
	<form action="validation05_process.jsp" name="Member" method="post">
		<p>
			아이디 : <input type="text" name="id">
		<p>
			비밀번호 : <input type="password" name="password">
		<p>
			이름 : <input type="text" name="name">
		<p>
			연락처 : <select name="phone1">
				<option value="010">010</option>
				<option value="011">011</option>
				<option value="016">016</option>
				<option value="017">017</option>
				<option value="019">019</option>
			</select> - <input type="text" maxlength="4" size="4" name="phone2"> -
			<input type="text" maxlength="4" size="4" name="phone3">
		<p>
			이메일 : <input type="text" name="email">
		<p>
			<input type="button" value="가입하기" onclick="return checkMember()">
	</form>
</body>
</html>
