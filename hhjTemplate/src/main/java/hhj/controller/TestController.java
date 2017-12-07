package hhj.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import hhj.service.hhjService;

@Controller
public class TestController {
	@Resource(name = "hhjService")
	private hhjService service;

	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/test/test.do")
	public String test(@RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - test");

		
		return "/test/test";
	}
}
