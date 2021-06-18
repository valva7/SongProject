package security;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.web.authentication.SavedRequestAwareAuthenticationSuccessHandler;

/**
 * 로그인 성공 핸들러
 * spring security AuthenticationSuccessHandler SavedRequestAwareAuthenticationSuccessHandler
 */
//@Slf4j
public class LoginSuccessHandler extends SavedRequestAwareAuthenticationSuccessHandler {

	@Autowired
	
    @Override
    public void onAuthenticationSuccess(HttpServletRequest request, HttpServletResponse response, Authentication auth) throws IOException, ServletException {

    	if(true){
    		request.setAttribute("siteId", "");
    		response.sendRedirect(request.getContextPath() +"/dashboard/index");
    	}else{
    		response.sendRedirect(request.getContextPath() +"/site/index");
    	}
    }
}