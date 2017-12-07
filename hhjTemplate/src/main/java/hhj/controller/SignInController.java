package hhj.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import hhj.service.hhjService;

@Controller
public class SignInController {
	@Resource(name = "hhjService")
	private hhjService service;
	
	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/signin/signin.do")
	public String signin(@RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - 로그인 화면 view");
		
		return "/signin/signin";
	}
	
	@RequestMapping("/signin/doLogin.do")
	public @ResponseBody Map<String, Object> doLogin(@RequestParam Map<String, Object> param,
			HttpSession session) {
		log.debug("hhj - 로그인 처리" + param);
		
		List list = null;
		
		try {
			list = service.list((String) param.get("ACTION"), param);
			log.debug("list = " + list);
			
			if(list != null && list.size() > 0) {
				param.put("isSuccess", "SUCC");
				param.put("msg", "");
				
				session.setAttribute("USER_SN", ((Map<String, Object>) list.get(0)).get("USER_SN"));
				session.setAttribute("USER_ID", ((Map<String, Object>) list.get(0)).get("USER_ID"));
				session.setAttribute("USER_NAME", ((Map<String, Object>) list.get(0)).get("USER_NAME"));
				session.setAttribute("PRIVGRP_SN", ((Map<String, Object>) list.get(0)).get("PRIVGRP_SN"));
			}
			else {
				param.put("isSuccess", "FAIL");
				param.put("msg", "아이디 또는 패스워드가 올바르지 않습니다.");
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		param.put("response", list);
		
		return param;
	}
	
	@RequestMapping("/signin/signout.do")
	public String signout(@RequestParam Map<String, Object> param, HttpSession session) {
		log.debug("hhj - 로그아웃");
		
		session.invalidate();
		
		return "redirect:/";
	}
}
