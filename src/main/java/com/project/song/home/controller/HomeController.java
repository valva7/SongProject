package com.project.song.home.controller;

import java.text.DateFormat;
import java.util.ArrayList;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.collections.map.HashedMap;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.song.home.serviceImpl.serviceImp;

/**
 * Handles requests for the application home page.
 */
@Controller
public class HomeController {
	
	@Autowired
	serviceImp serviceImp;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/")
	public String home(Locale locale, Model model) {
		logger.info("Welcome home! The client locale is {}.", locale);
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		String str = serviceImp.oneTest();
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		System.out.println(str);
		System.out.println(list.toString());
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("list", list );
		model.addAttribute("str", str );
		
		return "login";
	}
	
	// 회원가입 화면
	@RequestMapping(value = "/signUp.do")
	public String singUp(Locale locale, Model model) {
		
		return "signUp";
	}
	
	@ResponseBody
	@RequestMapping(value = "/loginCheck.do", method = {RequestMethod.GET, RequestMethod.POST})
	public Map<String, String> loginCheck(@RequestParam Map<String, String> param, HttpServletResponse res) {
		
		String userId = param.get("loginId");
		String userPw = param.get("loginPw");
		
		Map<String, String> userInfo = new HashMap<String, String>();
		userInfo.put("loginId", userId);
		userInfo.put("loginPw", userPw);
		
		List<Map<String, String>> list = new ArrayList<Map<String, String>>();
		Map<String, String> resultMap = new HashMap<String, String>();
		resultMap = serviceImp.loginCheck(userInfo);
		
		Map<String, String> map = new HashMap<String, String>();
		
		if (resultMap != null) {
			map.put("result", "Pass");
		}else {
			map.put("result", "NoPass");
		}
		
		return map;
	}
	
	@RequestMapping(value = "/main.do")
	public String login(Locale locale, Model model) {
		
		Date date = new Date();
		DateFormat dateFormat = DateFormat.getDateTimeInstance(DateFormat.LONG, DateFormat.LONG, locale);
		
		String formattedDate = dateFormat.format(date);
		
		List<Map<String, Object>> list = new ArrayList<Map<String,Object>>();
		System.out.println(list.toString());
		
		model.addAttribute("serverTime", formattedDate );
		model.addAttribute("list", list );
		
		return "main/main";
	}
	
}
