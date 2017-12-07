package hhj.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import hhj.service.hhjService;
import hhj.service.hhjServiceUser;

@Controller
public class UserController {
	@Resource(name = "hhjService")
	private hhjService service;
	
	@Resource(name = "hhjServiceUser")
	private hhjServiceUser serviceUser;

	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/user/user.do")
	public String ProgramView(@RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - 사용자관리화면 view");
		
		// 권한그룹 조회
		List list = null;
		try {
			list = service.list("user.doSelectPrivGrp", param);
			log.debug("list = " + list.toString());
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}

		model.addAttribute("selectPrivGrp", list);

		return "/user/user";
	}
	
	@RequestMapping("/user/doSelectDetail.do")
	public @ResponseBody Map<String, Object> doSelectDetail(@RequestParam Map<String, Object> param) {
		log.debug("SelectDetail param = " + param);
		
		Map<String, String> map = null;

		try {
			map = service.selectByPk("user.doSelectDetail", param);
			map.putAll(service.selectByPk("user.doSelect2", param));
			log.debug("map = " + map);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		param.put("response", map);
		
		return param;
	}
	
	@RequestMapping("/user/doInsert.do")
	public @ResponseBody Map<String, Object> doInsert(@RequestParam Map<String, Object> param) {
		log.debug("Insert param = " + param);
		
		int cnt = -1;
		String isSuccess = "FAIL";
		
		try {
			cnt = serviceUser.insertUserNPriv(param);
			log.debug("insert return = " + cnt);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = cnt > -1 ? "SUCC" : "FAIL";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
	
	@RequestMapping("/user/doUpdate.do")
	public @ResponseBody Map<String, Object> doUpdate(@RequestParam Map<String, Object> param) {
		log.debug("Update param = " + param);
		
		int cnt = 0;
		String isSuccess = "FAIL";
		
		try {
			cnt = serviceUser.updateUserNPriv(param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = cnt > 0 ? "SUCC" : "FAIL";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
	
	@RequestMapping("/user/doDelete.do")
	public @ResponseBody Map<String, Object> doDelete(@RequestParam Map<String, Object> param) {
		log.debug("Delete param = " + param);
		
		int cnt = 0;
		String isSuccess = "FAIL";
		
		try {
			cnt = serviceUser.deleteUserNPriv(param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = cnt > 0 ? "SUCC" : "FAIL";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
}
