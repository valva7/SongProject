package loginController;

import java.text.DateFormat;

import java.util.Date;
import java.util.HashMap;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import loginServiceImp.loginServiceImp;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {

	@Autowired
	loginServiceImp serviceImp;

	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);

	// 로그인 화면 (index)
	@RequestMapping(value = "/loginPage")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);

		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);

		String formattedDate = dateFormat.format(date);

		model.addAttribute("serverTime", formattedDate);

		return "login";
	}

	// 메인 이동
	@RequestMapping(value = "/main.do")
	public String login(HttpServletRequest req, Locale locale, Model model) {

		String loginId = req.getParameter("loginId");
		
		Map<String, String> param = new HashMap<String, String>();
		param.put("loginId", loginId);
		
		Map<String, String> resultMap = serviceImp.getUserName(param);
		
//		model.addAttribute("userName", resultMap.get("user_name"));

		return "main/main";
	}
	
	// 회원가입 화면
	@RequestMapping(value = "/signUp.do")
	public String singUp(Locale locale, Model model) {
		
		return "signUp";
	}

	// 아이디 중복확인
	@ResponseBody
	@RequestMapping(value = "/overlapValid.do")
	public Map<String, String> overlapValid(@RequestParam Map<String, String> param, Model model) {

		String checkId = param.get("id");

		Map<String, String> idCheck = new HashMap<String, String>();
		idCheck.put("id", checkId);

		int idExist = serviceImp.getIdCheck(idCheck);

		Map<String, String> result = new HashMap<String, String>();

		if (idExist == 0) {
			result.put("result", "possible");
		} else {
			result.put("result", "impossible");
		}

		return result;
	}

	// 회원가입
	@RequestMapping(value = "/signUpSend.do")
	public Map<String, String> signUpSend(@RequestParam Map<String, String> param, Model model) {

		Map<String, String> result = new HashMap<String, String>();

		return result;
	}

	// 로그인 전 확인
	@ResponseBody
	@RequestMapping(value = "/loginCheck.do", method = { RequestMethod.GET, RequestMethod.POST })
	public Map<String, String> loginCheck(@RequestParam Map<String, String> param, HttpServletRequest req, HttpServletResponse res) {

		HttpSession session = req.getSession();
		
		String userId = param.get("loginId");
		String userPw = param.get("loginPw");

		Map<String, String> userInfo = new HashMap<String, String>();
		userInfo.put("loginId", userId);
		userInfo.put("loginPw", userPw);

		Map<String, String> resultMap = new HashMap<String, String>();
		resultMap = serviceImp.loginCheck(userInfo);

		Map<String, String> map = new HashMap<String, String>();

		if (resultMap != null) {
			map.put("result", "Pass");
			session.setAttribute("userName", resultMap.get("USER_NAME"));
		} else {
			map.put("result", "NoPass");
		}

		return map;
	}

//	// 채팅 화면 이동
//	@RequestMapping(value = "/chat.do")
//	public String chat(Locale locale, Model model) {
//
//		Date date = new Date();
//		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
//
//		String formattedDate = dateFormat.format(date);
//
//		List<Map<String, Object>> list = new ArrayList<Map<String, Object>>();
//		System.out.println(list.toString());
//
//		model.addAttribute("serverTime", formattedDate);
//		model.addAttribute("list", list);
//
//		return "main/chat";
//	}

}
