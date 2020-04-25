<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 상세</title>
</head>
<style type="text/css">
.right{
	float: right;
}
.center{
	text-align: center;
	vertical-align: middle;
}
.wid90 {
	width: 90%;
	margin-left: auto;
    margin-right: auto;
}
div#title {
	padding: 20px;
	border: 1px solid;
	margin-top: 20px;
	margin-bottom: 20px;
}
div#contents {
	padding: 20px;
	border: 1px solid;
	margin-bottom: 20px;
	height: 300px;
}
div#otherPosts {
	padding: 20px;
	border: 1px solid;
	margin-top: 20px;
	margin-bottom: 20px;
	height: 150px;
}
div#comment {
	padding: 20px;
	border: 1px solid;
	margin-bottom: 20px;
	height: 200px;
}
div#file_attach {
	padding: 10px;
	border: 1px solid;
	width: 200px;
	text-align: center;
	
}
</style>
<body>
<form action="">
	<div id="container">
		<div id="title" class="wid90">
			<b>글 제목</b><span class="right"><b>작성일  / 작성자</b></span>
		</div>
		<div id="contents" class="wid90">
			<div id="file_attach" class="right">첨부파일목록</div>
			<div>
				<p class="center">내용</p>
			</div>
		</div>
		<div class="wid90"><input type="button" value="수정"></div>
		<div id="otherPosts" class="center wid90">
			속해있는 카테고리 글 다섯개
		</div>
		<div id="comment" class="center wid90">
			댓글
		</div>
	</div>
</form>
</body>
</html>