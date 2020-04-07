<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"
	language="java"%>
<%@ page session="false"%>
<script src="http://code.jquery.com/jquery-1.11.2.min.js"></script>
<style>
* {
    margin:0;
    padding:0;
}
ul {
    list-style-type: none;
}
body {
    font-family:"맑은고딕", "돋움";
    font-size:12px;
    color:444444;
}
#login_box {
    width:220px;
    height:120px;
    border:solid 1px #bbbbbb;
    border-radius:15px;
    margin:10px 0 0 10px;
    padding:10px 0 0 15px;
}
h2 {
    font-family:"Arial";
    margin-bottom:10px;
}
#login_box input {
    width:100px;
    height:18px;
}
#id_pass, #login_btn {
    display: inline-block;
    vertical-align: top; 
}
#id_pass span {
    display: inline-block;
    width:20px;
}
#pass {
    margin-top:3px;
}
#login_btn button {
    margin-left:5px;
    padding:12px;
    border-radius:5px;
}
#btns {
    margin:12px 0 0 0;
    text-decoration:underline;    
}
#btns a {
    margin-left:10px;
    display:inline;
}
</style>
<html>
<head>
<title>Home</title>
</head>
<form>
  <div id="login_box">
    <h2>Member Login</h2>
    <ul id="input_button">
      <li id="id_pass">
        <ul>
          <li>
            <span>ID</span>
            <input type="text">
          </li> <!-- id -->
          <li id="pass">    
            <span>PW</span>
            <input type="password">            
          </li> <!-- pass -->
        </ul>
      </li>
      <li id="login_btn">
        <button>로그인</button>
      </li>
    </ul>    
    <ul id="btns">
      <a href="#" id="sign">회원 가입</a>
      <a href="#">아이디/비밀번호 찾기</a>
    </ul>
  </div> <!-- login_box -->
</form>
</html>

<script type="text/javascript">
	$(document).ready(function() {
	});

	$('#sign').click(function() {
		location.href = "/song/signUp";
	});
</script>
