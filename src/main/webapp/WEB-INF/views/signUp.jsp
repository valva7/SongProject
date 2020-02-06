<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

	<form name="registerform" method="post" enctype="multipart/form-data"
		action="./register">
		<div class="fieldlabel">
			<label for="userId">아이디</label>
		</div>
		<div class="formfield">
			<input type="text" id="userId" name="userId" maxlength="20" value="">
		</div>
		<div class="fieldlabel">
			<label for="userPw">패스워드</label>
		</div>
		<div class="formfield">
			<input type="password" id="userPw" name="userpPw" maxlength="20"
				autocomplete="off">
		</div>
		<div class="fieldlabel">
			<label for="userPwCheck">패스워드확인</label>
		</div>
		<div class="formfield">
			<input type="password" id="userPwCheck" name="userPwCheck"
				maxlength="20" autocomplete="off">
		</div>
		<div class="fieldlabel">
			<label for="userName">이름</label>
		</div>
		<div class="formfield">
			<input type="text" id="userName" name="userName" maxlength="20"
				value="">
		</div>
		<div class="fieldlabel">
			<label for="nickName">닉네임</label>
		</div>
		<div class="formfield">
			<input type="text" id="nickName" name="nickName" maxlength="20" value="">
		</div>

		<div class="fieldlabel">
			<label for="email01">주소</label>
		</div>
		<div class="formfield">
			<input type="text" id="address" name="address" maxlength="20" value="">
		</div>
		<br>
		<button id="sign" type="button" class="btn_login">회원가입</button>
	</form>
</body>
</html>