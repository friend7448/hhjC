package hhj.controller;

import java.util.Map;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

@Controller
public class ProgramController {
	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping("/program/program.do")
	public String program(@RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - in controller");
		
		return "/program/program";
	}

}
