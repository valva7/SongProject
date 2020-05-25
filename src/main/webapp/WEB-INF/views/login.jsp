<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page session="false"%>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<html>
<head>
<!-- 부트스트랩  관련 meta-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Home</title>
<!-- 부트스트랩  css link-->
<!-- <link href="/resources/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<!-- 부트스트랩 js 추가-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- JQuery 라이브러리 추가 -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>

<style type="text/css">
#container {
	width: 768px;
	margin: 0 auto;
 	margin-top:50px;
	padding-bottom: 50px;
	min-height: 185px;
}
#wrapper {
	width: 400px;
	margin: 0 auto;
}
#table {
	width:400px;
	height: 400px;
}
tr, td, input {
	width:400px;
	height: 50px;
	text-align: center;
}
#loginBtn {
	width:400px;
	height: 70px;
	font-size: 20px;
}
#titleDiv {
	width: 768px;
	margin: 0 auto;
	margin-top: 100px;
}
#titleName {
	width: 400px;
	margin: 0 auto;
}
#title{
	margin: 0 auto;
	width: 305px;
	font-family: cursive;
	color: gray;
}

</style>
</head>
<body>
<!-- 부트스트랩 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- <script src="/resources/js/bootstrap.min.js"></script> -->
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<div id="titleDiv">
	<div id="titleName">
		<h1 id="title">Source Storage</h1>
	</div>
</div>
<div id="container">
	<div id="wrapper">
		<table id="table">
			<tr>
				<td><input id="loginId" type="text" placeholder="ID"></td>
			</tr>
			<tr>
				<td><input id="loginPw" type="password" placeholder="PASSWORD"></td>
			</tr>
			<tr>
				<td><button id="loginBtn" style="font-weight: 30px" type="button" class="btn" onclick="javascript:loginCheck();">Log-in</button></td>
			</tr>
			<tr>
				<td style="text-align: center">
					<a href="#" id="sign" onclick="signUp()">회원 가입</a>
					<span>|</span>
					<a href="#" id="findId">아이디 찾기</a>
					<span>|</span> 
					<a href="#" id="findPw">비밀번호 찾기</a>
				</td>
			</tr>
		</table>
	</div>
</div>
</body>
</html>

<script type="text/javascript">
	$(document).ready(function() {
		
	});
	
	function signUp() {
		location.href = "/song/signUp.do";
	}
	
    function loginCheck(){     

		var loginId = $("#loginId").val();
		var loginPw = $("#loginPw").val();

		var loginJson = {
				'loginId' : loginId,
				'loginPw' : loginPw
			}
                   
	    $.ajax({
	    	url: "/song/loginCheck.do",
	        type: "POST" ,
	        async: true ,
	        data: JSON.stringify(loginJson),
// 	        dataType : "json",
	        contentType: "application/json",
	        success: function(data) {
	            alert("성공");
	        },
	        error: function(errorThrown) {
	            alert(errorThrown.statusText);
	        }
		});
    }
</script>
