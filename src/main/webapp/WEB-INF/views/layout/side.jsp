<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<head/>
<body>
<header class="box bgcolor-purple">

    <h2 id="h1">Side</h2>
    
	<div>
		<button type="button" onclick="javascript:test();">Ajax Test</button>
	</div>
	
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
    
</script> 
</html>