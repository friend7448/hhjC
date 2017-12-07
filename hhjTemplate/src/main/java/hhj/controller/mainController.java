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
* @FileName      : mainController.java 
* @Project     : hhjTemplate 
* @Date        : 2017. 11. 16. 
* @작성자          : hhj 
* @변경이력     : 
* @프로그램 설명     : 
*/
@Controller
public class mainController {
	@Resource(name = "hhjService")
	private hhjService service;
	
	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/main/main.do")
	public String main(@RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - 메인화면 view");
		
		return "/main/main";
	}
}
