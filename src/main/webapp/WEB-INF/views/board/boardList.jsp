<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 리스트</title>
</head>
<style type="text/css">
table {
	width: 90%;
	border-top: 1px solid;
	margin-left: auto;
    margin-right: auto;
}
th, td {
	border-bottom: 1px solid;
	padding: 10px;
	text-align: center;
	vertical-align: middle;
}
div#category {
	padding: 20px;
	margin-bottom: 20px;
    border: 1px solid;
}
div#list {
	height: 450px;
	padding: 20px;
    margin-bottom: 20px;
    border: 1px solid;
}
div#pagination {
	padding: 20px;
    border: 1px solid;
}
</style>
<body>
<form action="">
	<div id="container">
		<div id="category">
			<h3>카테고리명</h3>
		</div>
		<div id="list">
			<table>
				<colgroup>
					<col width="10%" />
					<col width="50%" />
					<col width="20%" />
					<col width="20%" />
				</colgroup>
				<tr>
					<th>글 번호</th>
					<th>제목</th>
					<th>작성일</th>
					<th>작성자</th>
				</tr>
				<tr>
				    <td>1</td>
				    <td>sample</td>
				    <td>2020/04/25</td>
				    <td>연지</td>
				</tr>
				<tr>
				    <td>2</td>
				    <td>sample</td>
				    <td>2020/04/25</td>
				    <td>연지</td>
				</tr>
		    </table>
	    </div>
	    <div id="pagination">&lt;&lt; 1 2 3 4 5 &gt;&gt;</div>
    </div>
</form>
</body>
</html>