<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<head/>
<body>
<header class="box bgcolor-purple">

    <h2 id="h1">header (안 하는 사람 맴매할꼬야)</h2>
    
	<div>
		<button type="button" onclick="javascript:moveLogin();">로그인 페이지 Go</button>
	</div>
	
</header>
<body/>
<script type="text/javascript">
    // 로그인 페이지 이동
    function moveLogin(){                
        location.href = "/song/";
    }
</script> 
</html>