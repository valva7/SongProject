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
		width: 100px;
		margin-bottom: 50px;
		font-size: 60px;
	}
	.container {
		width: 768px;
		margin: 0 auto;
	 	margin-top:50px;
		padding-bottom: 50px;
		min-height: 185px;
	}
	.wrapper {
		width: 600px;
		margin: 0 auto;
	}
	tr, td{
		width:400px;
		height: 30px;
		text-align: right;
		font-size: 25px;
	}
	input {
		width:300px;
		height: 30px;
		text-align: center;
	}
	.table {
		width: 600px;
	}
	.button {
		height: 30px;
	}
</style>
</head>
<body>
	<div class="container">
		<h3 class="title">SignUp</h3>
		<div class="wrapper">
			<table class="table">
				<tr>
					<td>아이디 </td>
					<td><input type="text"></td>
					<td><button class="button">중복 확인</button> </td>
				</tr>
				<tr>
					<td>비밀번호 </td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>이름 </td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>생일 </td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>E-MAIL </td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>연락처 </td>
					<td><input type="text"></td>
				</tr>
			</table>
		</div>
	</div>
</body>
</html>