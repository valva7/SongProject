<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

<style type="text/css">
	ul{
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
		height : 200px;
		width : 210px;
		margin : auto;
		margin-top: 50px;
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
		width : 100%;
		margin : auto;
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
				
				</div>
				<!-- 검색창 div -->
				<div class="searchBox">
					<input type="text" class="searchIpt">
				</div>
				<div class="categoryDivTop">
					<div>
						<ul>
							<!-- Depth 1 -->
							<li class="parentCategoryNo_1">
								<div>
									<img alt="" src="resources/image/imageList.PNG"> <a
										href="#">카테고리 Test</a> <span> (1) </span> <img alt="a"
										src="resources/image/image.PNG" class="imageCursor"
										onclick="toggleDepth('depth1')">
								</div>
							</li>
							<!-- Depth 2 -->
							<li id="depth1" style="display: list-item;">
								<div>
									<img alt="" src="resources/image/imageList.PNG"> <a
										href="#">카테고리 DepthTest</a> <span> (1) </span>
								</div>
							</li>
						</ul>
					</div>
				</div>
			</div>
		</div>
	</div>

		<!-- 	<div> -->
<!-- 		<button type="button" onclick="javascript:test();">Ajax Test</button> -->
<!-- 	</div> -->
	
</header>
<body/>
<script type="text/javascript">
    // 로그인 페이지 이동
    function moveLogin(){                
        location.href = "/song/";
    }
    
    var obj = {"name": "kim", "age": 28};
    
    function test() {
	    
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