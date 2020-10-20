<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String serverTime = (String)request.getAttribute("serverTime");
%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록</title>

<style type="text/css">
.wrap {
	height: 100%;
	margin: auto;
	margin-top: 150px;
	margin-left: 100px;
}

.listHeader {
	margin-top: 50px;
	height: 270px;
}

.listBody {
	height: 270px;
	padding-top: 20px;
}

.topBar {
	display: block;
	height: 3.0em;
	border-bottom-width: 0.1em;
	border-bottom-style: solid;
	border-bottom-color: #232323;
	padding-top: 0.5em;
	padding-left: 2em;
	padding-bottom : 7px;
	background-color: #777;
	box-sizing: border-box;
}

.inputDiv {
	z-index: 100;
	width: 30em;
	height: 100%;
	margin-right: 2em;
	float: right;
	color: #fff;
	background-color: #232323;
	-webkit-border-radius: 0.4em;
	-moz-border-radius: 0.4em;
	border-radius: 0.4em;
	box-sizing: border-box;
}

.inputSearch {
	border:none;
	display: inline-block;
	font-size: 1.5em;
	height: 100%;
	width: 17.5em;
	padding: 0;
	padding-left: 1em;
	border-radius: 0.2em;
	background-color: transparent;
	color: #fff;
	vertical-align: bottom;
	transition-duration: 0.35s;
	transition-timing-function: ease-out;
	transition-property: width;
	backface-visibility: hidden;
	-webkit-perspective: 1000;
}
</style>
</head>
<body>

	<div class="topBar">
		<div class="inputDiv">
			<input class="inputSearch" type="text">
		</div>
	</div>

	<div class="wrap">
		<!--공지사항 -->
		<div class="listHeader">
			<div>
				<div>
					<h2>공지사항</h2>
					<form id="boardForm" name="boardForm">
						<table width="70%">
							<colgroup>
								<col width="10%" />
								<col width="25%" />
								<col width="10%" />
								<col width="15%" />
								<col width="20%" />
							</colgroup>
							<thead style="margin-bottom: 10px;">
								<tr>
									<th>글번호</th>
									<th>제목</th>
									<th>조회수</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody id="tbody">
								<c:forEach end="4" step="1" begin="0">
									<tr>
										<td><span>1</span></td>
										<td><a href="">이것은 제목이다</a></td>
										<td><span>9999</span></td>
										<td><span>김태욱</span></td>
										<td><span>2020.05.20</span></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
		<!--최근 게시물 -->
		<div class="listBody">
			<div>
				<div>
					<h2>최근 게시물</h2>
					<form id="boardForm" name="boardForm">
						<table width="70%" class="table01">
							<colgroup>
								<col width="10%" />
								<col width="25%" />
								<col width="10%" />
								<col width="15%" />
								<col width="20%" />
							</colgroup>
							<thead style="margin-bottom: 10px;">
								<tr>
									<th>글번호</th>
									<th>제목</th>
									<th>조회수</th>
									<th>작성자</th>
									<th>작성일</th>
								</tr>
							</thead>
							<tbody id="tbody2">
								<c:forEach end="4" step="1" begin="0">
									<tr>
										<td><span>1</span></td>
										<td><a href="">이것은 제목이다</a></td>
										<td><span>9999</span></td>
										<td><span>김태욱</span></td>
										<td><span>2020.05.20</span></td>
									</tr>
								</c:forEach>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>
	</div>

</body>
<script type="text/javascript">

</script>
</html>