package hhj.controller.template;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import hhj.service.hhjService;


/** 
* @FileName      : templateController.java 
* @Project     : hhjTemplate 
* @Date        : 2017. 6. 28. 
* @작성자          : hhj 
* @변경이력     : 
* @프로그램 설명     : 
*/
@Controller
public class templateController {
	@Resource(name = "hhjService")
    private hhjService service;
	
	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping("/hhj/login")
	public String login(HttpServletRequest request, ModelMap model, HttpSession session){
		log.debug("hhjController/login Mehtod - 인증체크  후 실행되는 controller");
	
		return "/hhj/login";
	}
	
	@RequestMapping("/hhj/login2")
	public String login2(HttpServletRequest request, ModelMap model, HttpSession session){
		log.debug("hhjController/login2 Method - 인증체크 없이 실행되는 controller");
		
		Map<String, Object> parmMap = new HashMap<String, Object>(); 
        parmMap.put("userId", "hhj");
        parmMap.put("userPw", "11111");
        
        try {
			List userList = service.list("Persons_select", parmMap);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
		return "/hhj/login";
	}
	
	@RequestMapping("/hhj/templateC")
	public String templateC(Map<String, Object> commandMap){
		log.debug("templateC");
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> parmMap = new HashMap<String, Object>(); 
        parmMap.put("userId", "hhj");
        parmMap.put("userPw", "11111");
        
        try {
			List persons_select = service.list("Persons_select", parmMap);
			mav.addObject("list", persons_select);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
        return "/hhj/login";
	}
	
	@RequestMapping("/hhj/login3")
	public String login3(Map<String, Object> commandMap){
		log.debug("hhjController/login3 Method - 인증체크 없이 실행되는 controller");
		log.debug("CommandMap test");
		
		ModelAndView mav = new ModelAndView();
		
		Map<String, Object> parmMap = new HashMap<String, Object>(); 
        parmMap.put("userId", "hhj");
        parmMap.put("userPw", "11111");
        
        try {
			List persons_select = service.list("Persons_select", parmMap);
			mav.addObject("list", persons_select);
			
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
        return "/hhj/login";
	}
}
