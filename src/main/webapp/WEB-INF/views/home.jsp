<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" language="java" %>
<%@ page session="false"%>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<html>
<head>
<title>Home</title>
</head>
<body>
	<h1>Hello world!</h1>
	
	<input id="sign2" type="button" value="TEST">

	<form method="post" id="authForm"
		action="https://www.tistory.com/auth/login">
		<input type="hidden" name="redirectUrl"
			value="https://blogpack.tistory.com/manage">
		<fieldset>
			<legend class="screen_out">로그인 정보 입력폼</legend>
			<div class="box_login">
				<div class="inp_text">
					<label for="loginId" class="screen_out">아이디</label> <input
						type="email" id="loginId" name="loginId" placeholder="ID">
				</div>
				<div class="inp_text">
					<label for="loginPw" class="screen_out">비밀번호</label> <input
						type="password" id="loginPw" name="password"
						placeholder="Password">
				</div>
			</div>
			<button type="submit" class="btn_login" disabled>로그인</button>
			<button id="sign" type="button" class="btn_login">회원가입</button>
			<div class="login_append">
				<div class="inp_chk">
					<!-- 체크시 checked 추가 -->
					<input type="checkbox" id="keepLogin" class="inp_radio"
						name="keepLogin"> <label for="keepLogin" class="lab_g">
						<span class="img_top ico_check"></span> <span class="txt_lab">로그인
							상태 유지</span>
					</label>
				</div>
				<span class="txt_find"> <a href="/member/find/loginId"
					class="link_find">아이디</a> / <a href="/member/find/password"
					class="link_find">비밀번호 찾기</a>
				</span>
			</div>

		</fieldset>
	</form>



</body>
</html>

<script type="text/javascript">
	$('#sign').click(function(){
		console.log('TEST');
		location.href = "/song/signUp";
	});
</script>
