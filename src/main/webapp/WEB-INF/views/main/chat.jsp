<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%
	String userName = (String)session.getAttribute("userName");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="http://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.js"></script>
<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/sockjs-client/1.1.5/sockjs.min.js"></script>
    <style>
      .chat_log{ width: 100%; height: 800px; }
      .message{ width: 77%; }
      .chat{ width: 20%; }
    </style>
</head>
<body>
    <div>
      <textarea id="messageArea" class="chat_log" readonly></textarea>
    </div>
    <div id="chat">
      <input id="message" class="message" type="text">
      <input id="sendBtn" type="submit" class="chat" value="chat"/>
    </div>
    <div id="box" class="box"></div>
</body>
<script type="text/javascript">
	$("#sendBtn").click(function() {
		sendMessage();
		$('#message').val('')
	});

	let sock = new SockJS("http://127.0.0.1:8080/echo");
	sock.onmessage = onMessage;
	sock.onclose = onClose;
	
	// 메시지 전송
	function sendMessage() {
		sock.send($("#message").val() + "," + "<%=userName %>");
	}
	// 서버로부터 메시지를 받았을 때
	function onMessage(msg) {
		var data = msg.data;
		$("#messageArea").append(data + "&#10;");
	}
	// 서버와 연결을 끊었을 때
	function onClose(evt) {
		$("#messageArea").append("연결 끊김");
	}
</script>
</html>