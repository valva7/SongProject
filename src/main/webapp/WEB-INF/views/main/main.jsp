<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>게시판 목록</title>

<!-- 공통 JavaScript -->
<script type="text/javascript" src="/js/common/jquery.js"></script>

<style type="text/css">
</style>
</head>
<body>
	<div id="wrap">
		<div id="container">
			<div class="inner">
				<h2>공지사항 예시</h2>
				<form id="boardForm" name="boardForm">
					<table width="100%" class="table01">
						<colgroup>
							<col width="10%" />
							<col width="25%" />
							<col width="10%" />
							<col width="15%" />
							<col width="20%" />
						</colgroup>
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>조회수</th>
								<th>작성자</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody id="tbody">

						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>

	<div id="wrap2">
		<div id="container2">
			<div class="inner">
				<h2>최신 게시물 예시</h2>
				<form id="boardForm" name="boardForm">
					<table width="100%" class="table01">
						<colgroup>
							<col width="10%" />
							<col width="25%" />
							<col width="10%" />
							<col width="15%" />
							<col width="20%" />
						</colgroup>
						<thead>
							<tr>
								<th>글번호</th>
								<th>제목</th>
								<th>조회수</th>
								<th>작성자</th>
								<th>작성일</th>
							</tr>
						</thead>
						<tbody id="tbody2">

						</tbody>
					</table>
				</form>
			</div>
		</div>
	</div>
</body>
<script type="text/javascript">

</script>
</html>