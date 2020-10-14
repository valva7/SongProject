package webSocket;

import java.util.ArrayList;
import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.socket.CloseStatus;
import org.springframework.web.socket.TextMessage;
import org.springframework.web.socket.WebSocketSession;
import org.springframework.web.socket.handler.TextWebSocketHandler;
import org.springframework.web.context.request.RequestContextHolder;
import org.springframework.web.context.request.RequestContextListener;
import org.springframework.web.context.request.ServletRequestAttributes;

@RequestMapping("/echo")
public class EchoHandler extends TextWebSocketHandler {
	// 세션 리스트
	private List<WebSocketSession> sessionList = new ArrayList<WebSocketSession>();

	private static Logger logger = LoggerFactory.getLogger(EchoHandler.class);

	// 클라이언트가 연결 되었을 때 실행
	@Override
	public void afterConnectionEstablished(WebSocketSession session) throws Exception {
		sessionList.add(session);
		logger.info("{} 연결됨", session.getId());
		System.out.printf("{} 연결됨", session.getId().toString());
		
		// 1번
//		HttpServletRequest servletRequest = (HttpServletRequest) ((ServletRequestAttributes) RequestContextHolder.getRequestAttributes());
		// 2번
//		ServletRequestAttributes servletRequestAttribute = (ServletRequestAttributes) RequestContextHolder.currentRequestAttributes();
//		HttpSession httpSession = servletRequestAttribute.getRequest().getSession(true);
//		String userName = (String) httpSession.getAttribute("userName");

//        for(WebSocketSession sess : sessionList){
//          sess.sendMessage(new TextMessage(name + " : " + contents));
//        }
	}

	// 클라이언트가 웹소켓 서버로 메시지를 전송했을 때 실행
	@Override
	protected void handleTextMessage(WebSocketSession session, TextMessage message) throws Exception {
		logger.info("{}로 부터 {} 받음", session.getId(), message.getPayload());
		System.out.printf("{}로 부터 {} 받음", session.getId(), message.getPayload());

		String[] allMessage = message.getPayload().split(",");
		String contents = allMessage[0];
		String name = allMessage[1];

		// 모든 유저에게 메세지 출력
		for (WebSocketSession sess : sessionList) {
//            sess.sendMessage(new TextMessage(message.getPayload()));
			sess.sendMessage(new TextMessage(name + " : " + contents));
		}
	}

	// 클라이언트 연결을 끊었을 때 실행
	@Override
	public void afterConnectionClosed(WebSocketSession session, CloseStatus status) throws Exception {
		sessionList.remove(session);
		logger.info("{} 연결 끊김.", session.getId());
	}
}
