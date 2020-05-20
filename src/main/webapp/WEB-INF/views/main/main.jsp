<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
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
	}
	.listBody {
		margin-top: 230px;
	}

</style>
</head>
<body>
	<div class="wrap">
		<div class="listHeader">
			<div>
				<div>
					<h2>공지사항</h2>
					<form id="boardForm" name="boardForm">
						<table width="100%">
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
								<tr>
									<td>
										<span>1</span>
									</td>
									<td>
										<a href="">이것은 제목이다</a>
									</td>
									<td>
										<span>9999</span>
									</td>
									<td>
										<span>김태욱</span>
									</td>
									<td>
										<span>2020.05.20</span>
									</td>
								</tr>
							</tbody>
						</table>
					</form>
				</div>
			</div>
		</div>

		<div class="listBody">
			<div>
				<div>
					<h2>최신 게시물</h2>
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
								<tr>
									<td>
										<span>1</span>
									</td>
									<td>
										<a href="">이것은 제목이다</a>
									</td>
									<td>
										<span>9999</span>
									</td>
									<td>
										<span>김태욱</span>
									</td>
									<td>
										<span>2020.05.20</span>
									</td>
								</tr>
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