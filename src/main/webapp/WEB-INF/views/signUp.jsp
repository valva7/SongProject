<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
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

.genderSelect {
	width: 400px;
	height: 45px;
	text-align: center;
}

.inputText2 {
	width: 400px;
	height: 45px;
	text-align: right;
	font-size: 25px;
}

.inputSpan {
	width: 400px;
	height: 20px;
	text-align: left;
}

.inputSpan {
	width: 400px;
	height: 20px;
	text-align: left;
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
.pwSpan_possible {
	color: lime;
	font-size: 8px;
}
.pwSpan_impossible {
	color: red;
	font-size: 8px;
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
						<td class="inputText"><input id="pw_1" type="password" onkeyup="pwValid()"></td>
					</tr>
					<tr id="pwdDiv_1" class="inputSpan" style="display: none;">
						<td class="inputSpan"><span id="pwCheckMsg_1"></span> </td>
					</tr>
					<tr class="inputText">
						<td class="inputTitle">비밀번호 재확인</td>
					</tr>
					<tr class="inputText">
						<td class="inputText"><input id="pw_2" type="password" onkeyup="pwValid_2()"></td>
					</tr>
					<tr id="pwdDiv_2" class="inputSpan" style="display: none;">
						<td class="inputSpan"><span id="pwCheckMsg_2"></span> </td>
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
						<td class="inputText">
							<select class="genderSelect">
								<option>남</option>
								<option>여</option>
							</select>
						</td>
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

	function pwValid() {
		var pw_1 = $("#pw_1").val();
		
		$("#pwdDiv_1").css("display", "block");

        if($("#pw_1").val().length > 18) {
            $("#pw_1").val($("#pw_1").val().substring(0, 18));
        }

		if(pw_1.length < 8){
			$("#pwdDiv_2").css("display", "none");
			
			$("#pwCheckMsg_1").text("비밀번호는 8자리 이상이어야 합니다.");
			$("#pwCheckMsg_1").attr("class", "pwSpan_impossible");
		}else {
			if(pw_1.length > 16){
				$("#pwdDiv_2").css("display", "none");
				
				$("#pwCheckMsg_1").text("비밀번호는 16자리를 넘을 수 없습니다..");
				$("#pwCheckMsg_1").attr("class", "pwSpan_impossible");
			}else {
				$("#pwdDiv_2").css("display", "none");
				
				$("#pwCheckMsg_1").text("사용 가능한 비밀번호입니다.");
				$("#pwCheckMsg_1").attr("class", "pwSpan_possible");
			}
		}
	}

	function pwValid_2() {
		var pw_1 = $("#pw_1").val();
		var pw_2 = $("#pw_2").val();
		
		$("#pwdDiv_2").css("display", "block");

        if($("#pw_2").val().length > 18) {
            $("#pw_2").val($("#pw_2").val().substring(0, 18));
        }

        if(pw_1 != pw_2) {
			$("#pwCheckMsg_2").text("비밀번호가 틀립니다.");
			$("#pwCheckMsg_2").attr("class", "pwSpan_impossible");
        }else {
        	$("#pwdDiv_1").css("display", "none");
            
			$("#pwCheckMsg_2").text("사용가능한 비밀번호입니다.");
			$("#pwCheckMsg_2").attr("class", "pwSpan_possible");
        }
	}
</script>