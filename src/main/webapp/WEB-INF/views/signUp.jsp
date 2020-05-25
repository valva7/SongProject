<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<style>
.title {
	margin: 0 auto;
	width: 330px;
	margin-bottom: 50px;
	font-size: 60px;
	cursor: pointer;
}

.container {
	width: 500px;
	margin: 0 auto;
	margin-top: 50px;
	padding-bottom: 50px;
	min-height: 185px;
}

.wrapper {
	width: 600px;
	margin: 0 auto;
}

.inputText {
	width: 400px;
	height: 45px;
	text-align: left;
	font-size: 25px;
}

.inputText2 {
	width: 400px;
	height: 45px;
	text-align: right;
	font-size: 25px;
}

.inputTitle {
	font-size: 15px;
	text-align: left;
	font-weight: bold;
}

.inputSelect {
	text-align: left;
	height: 45px;
	width: 135px;
}

.select {
	text-align: center;
	height: 45px;
	width: 130px;
}

input {
	width: 400px;
	height: 45px;
	text-align: center;
}

.table {
	width: 500px;
}

.button {
	height: 50px;
}
.buttonSign {
	margin: auto;
    width: 410px;
    height: 50px;
    margin-top: 30px;
}
</style>
</head>
<body>
	<div class="container">
		<h3 class="title" id="title" onclick="goToMain()">BlogProject</h3>
		<div class="wrapper">
			<form action="">
				<table class="table">
					<tr class="inputText">
						<td class="inputTitle">아이디</td>
					</tr>
					<tr class="inputText">
						<td class="inputText"><input type="text"></td>
						<td class="inputText"><button class="button">중복 확인</button></td>
					</tr>
					<tr class="inputText">
						<td class="inputTitle">비밀번호</td>
					</tr>
					<tr class="inputText">
						<td class="inputText"><input type="password"></td>
					</tr>
					<tr class="inputText">
						<td class="inputTitle">비밀번호 재확인</td>
					</tr>
					<tr class="inputText">
						<td class="inputText"><input type="password"></td>
					</tr>
					<tr class="inputText">
						<td class="inputTitle">이름</td>
					</tr>
					<tr class="inputText">
						<td class="inputText"><input type="text"></td>
					</tr>
					<tr class="inputText">
						<td class="inputTitle">생년월일</td>
					</tr>
				</table>
				<table class="table">
					<tr class="inputText2">
						<td class="inputSelect">
							<select class="select"></select>
							<select class="select"></select>
							<select class="select"></select>
						</td>
					</tr>
				</table>
				<table class="table">
					<tr class="inputText">
						<td class="inputTitle">성별</td>
					</tr>
					<tr class="inputText">
						<td class="inputText"><input type="text"></td>
					</tr>
					<tr class="inputText">
						<td class="inputTitle">본인 확인 이메일</td>
					</tr>
					<tr class="inputText">
						<td class="inputText"><input type="text"></td>
					</tr>
					<tr class="inputText">
						<td class="inputTitle">연락처</td>
					</tr>
					<tr class="inputText">
						<td class="inputText"><input type="text"></td>
					</tr>
				</table>
				
				<button class="buttonSign">가입하기</button>
			</form>
		</div>
	</div>
</body>
</html>

<script type="text/javascript">
	$(document).ready(function() {
		
	});
	
	function goToMain() {
		location.href = "/song/";
	}
</script>