package security;

import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.authentication.AuthenticationServiceException;
import org.springframework.security.core.AuthenticationException;
import org.springframework.security.web.authentication.AuthenticationFailureHandler;
import org.springframework.security.web.authentication.session.SessionAuthenticationException;

/**
 * 로그인 실패 핸들러
 * spring security AuthenticationFailureHandler 
 */
//@Slf4j
public class LoginFailureHandler implements AuthenticationFailureHandler {

	@Autowired
	//UserLogInsertService userLogInsertService;
	
    @Override
    public void onAuthenticationFailure(HttpServletRequest request, HttpServletResponse response, AuthenticationException authException) throws IOException, ServletException {
        String forwardUrl = "/login";
        
        
        
        request.getRequestDispatcher(forwardUrl).forward(request, response);
    }
}
