package hhj.controller;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hhj.service.hhjService;

/**
 * 
 * @author	: hhj
 * @Date	: 2018. 11. 1.
 * @version	: 1.0
 * @see		: 
 *
 */
@Controller
public class MainController {
	@Resource(name = "hhjService")
	private hhjService service;
	
	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/main/main.do")
	public String main(@RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - /main/main.do");
		
		return "/main/main";
	}
}
