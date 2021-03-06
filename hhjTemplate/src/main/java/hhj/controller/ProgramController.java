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

/**
 * 
 * @author	: hhj
 * @Date	: 2018. 11. 1.
 * @version	: 1.0
 * @see		: 
 *
 */
@Controller
public class ProgramController {
	@Resource(name = "hhjService")
	private hhjService service;

	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/Program/Program.do")
	public String ProgramView(@RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - /program/program.do");

		// 상위프로그램 조회
		List list = null;
		try {
			list = service.list("program.doSelectUpPrg", param);
			log.debug("hhj - result list : " + list.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		model.addAttribute("selectUpPrg", list);
		
		return "/Program/Program";
	}
}
