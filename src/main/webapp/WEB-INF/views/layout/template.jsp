<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>블로그 프로젝트</title>
</head>
<body>
<table border="1" style="width: 1600px; height: 1000px; margin:0 auto;border-color: gray;">

<tr align="center">		<!-- header -->
	<td height="20%" colspan="2">
		<tiles:insertAttribute name="header" ignore="true"/>
	</td>
</tr>

<tr>
	<td width="15%" align="left" valign="top">
		<tiles:insertAttribute name="side"/>
	</td>
	
	<td height="80%" >	<!-- main -->
		<tiles:insertAttribute name="contents"/>
	</td>	
</tr>

<tr>	<!-- footer -->
	<td height="20%" colspan="2">
		<tiles:insertAttribute name="footer"/>
	</td>
</tr>

</table>

</body>
</html>