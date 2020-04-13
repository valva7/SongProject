package com.project.song.main.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Handles requests for the application home page.
 */
@Controller
public class mainController {
	
	@Autowired
//	menuServiceImp menuServiceImpl;
	
	private static final Logger logger = LoggerFactory.getLogger(mainController.class);
	
	@ResponseBody
	@RequestMapping(value = "/getSideMenu.do", method = RequestMethod.POST)
	public Map<String, String> getSideMenu(HttpServletRequest req, HttpServletResponse res) {
		
		Map<String, String> menuMap = new HashMap<String, String>();
		
		return menuMap;
	}
	
}
