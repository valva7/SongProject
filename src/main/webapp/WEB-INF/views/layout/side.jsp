<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
	ul{
		padding-left : 20px;
		list-style:none;
   	}
   	li{
   		list-style:none;
   	}
	.categoryDivTop {
		margin-top: 30px;
	}
	.imageCursor {
		cursor: pointer;
	}
	.profileBox {
		border : solid 1px gray;
		height : 250px;
		width : 210px;
		margin : auto;
		margin-top: 50px;
		border-radius: 0.2em;
	}
	.searchBox {
 		border : solid 1px gray; 
		height : 30px;
		width : 210px;
		margin : auto;
		margin-top: 20px;
	}
	.searchIpt {
		height : 100%;
		width : 70%;
		margin : auto;
		margin-right: 10px; 
		text-align : center;
	}
	.imageSize {
		padding-top:10px;
		margin: auto;
		height: 120px;
		width: 180px;
	}
	.profileName {
		padding-top:10px;
		margin-left: 10px;
		margin: auto;
		height: 50px;
		width: 180px;
	}
	
</style>
<head/>
<body>
<header class="box bgcolor-purple">
	<div>
		<div>
			<div>
				<!-- 프로필 div -->
				<div class="profileBox">
					<div class="imageSize">
						<img alt="프로필사진" src="resources/image/imageList.PNG">
				</div>
				<div class="profileName">
					<div>
						<strong>김태욱</strong>
						<br>
						<span>(valva7)</span>
						</div>
					</div>
				</div>
				<!-- 검색창 div -->
				<div class="searchBox">
					<input type="text" class="searchIpt" placeholder="search word">
					<button onclick="javascript:ajaxTest();">검색</button>
				</div>
				<div class="categoryDivTop">
					<div>
						<ul>
							<c:forEach end="1" step="1" begin="1">
							<!-- Depth 1 -->
							<li class="parentCategoryNo_1">
								<div>
									<img alt="" src="resources/image/imageList.PNG"> <a
										href="#">카테고리 Test</a> <span> (1) </span> 
									<img alt="a"
										src="resources/image/image.PNG" class="imageCursor"
										onclick="toggleDepth('depth1')">
								</div>
							</li>
							</c:forEach>
							<!-- Depth 2 -->
							<c:forEach end="1" step="1" begin="1">
							<li id="depth1" style="display: list-item;">
								<div>
									<img alt="" src="resources/image/imageList.PNG"> <a
										href="#">카테고리 DepthTest</a> <span> (1) </span>
								</div>
							</li>
							</c:forEach>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>
	
</header>
<body/>
<script type="text/javascript">
    // 로그인 페이지 이동
    function moveLogin(){                
        location.href = "/song/";
    }
    
    var obj = {"name": "kim", "age": 28};
    
    function ajaxTest() {
	    
	    $.ajax({
	    	url: "/song/getSideMenu.do",
	        type: "POST" ,
	        async: true ,
	        data: JSON.stringify(obj),
	        dataType : "json",
	        contentType: "application/json",
	        success: function(data) {
	            alert("성공");
	        },
	        error: function(errorThrown) {
	            alert(errorThrown.statusText);
	        }
		});
    }
    
    function toggleDepth(param) {
    	var displayVal = $("#"+param).css("display");
    	 
    	if (displayVal == "list-item") {
    		$("#"+param).css("display", "none");
		}else {
			$("#"+param).css("display", "list-item");
		}
    }
    
</script> 
</html>