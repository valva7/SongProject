<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<html>
<head>
<!-- 부트스트랩  관련 meta-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 부트스트랩  css link-->
<!-- <link href="/resources/css/bootstrap.min.css" rel="stylesheet"> -->
<link href="<c:url value="/resources/css/bootstrap.min.css" />"
	rel="stylesheet">
<!-- <link href="/resources/css/chat.css" rel="stylesheet"> -->
<!-- 부트스트랩 js 추가-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- JQuery 라이브러리 추가 -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<head />
<body>
	<header>
		<!-- 부트스트랩 -->
		<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
		<!-- <script src="/resources/js/bootstrap.min.js"></script> -->
		<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>
		
		
		
		<h2 id="h1" style="width:300px; color: #DDDDDD; margin-right: 1500px; cursor:pointer;">The SourceTank</h2>

	</header>
<body />
<script type="text/javascript">
	// 로그인 페이지 이동
	
	$("#h1").click(function() {
		location.href = "/main.do";
	})
</script> 
</html>