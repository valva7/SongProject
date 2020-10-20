<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!-- jstl 관련 라이브러리 -->
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<!-- 부트스트랩  관련 meta-->
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<!-- 부트스트랩  css link-->
<link href="<c:url value="/resources/css/bootstrap.min.css" />" rel="stylesheet">
<!-- 부트스트랩 js 추가-->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<!-- JQuery 라이브러리 추가 -->
<script src="https://code.jquery.com/jquery-3.2.1.min.js"></script>
<title>블로그 프로젝트</title>
</head>
<body>
<!-- 부트스트랩 -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js"></script>
<script src="<c:url value="/resources/js/bootstrap.min.js" />"></script>

<table border="1" style="width: 1920px; height: 1000px; margin:0 auto;border-color: gray;">

<tr align="center" style="background: #232323;">		<!-- header -->
	<td height="20%" colspan="3">
		<tiles:insertAttribute name="header" ignore="true"/>
	</td>
</tr>

<tr>
	<td width="15%" align="left" valign="top">
		<tiles:insertAttribute name="side"/>
	</td>
	
	<td height="100%" width="70%" valign="top">	<!-- main -->
		<tiles:insertAttribute name="contents"/>
	</td>	
	
	<td height="100%" width="15%">	<!-- minichat -->
		<tiles:insertAttribute name="minichat"/>
	</td>
</tr>

<tr>	<!-- footer -->
	<td height="20%" colspan="3">
		<tiles:insertAttribute name="footer"/>
	</td>
</tr>

</table>

</body>
</html>