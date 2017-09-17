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
public class UserController {
	@Resource(name = "hhjService")
	private hhjService service;

	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/user/user.do")
	public String ProgramView(@RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - 사용자관리화면 view");

		// ======================= 권한조회 ===============================
		// String user_id = (String)session.getAttribute("USER_ID");
		// if(user_id == null || user_id.equals(""))
		// return "redirect:/";
		//
		// defaultGridDAO dao = new defaultGridDAO();
		// Map map_auth = new HashMap();
		// map_auth.put("menu_seq",NowMODL_id);
		// map_auth.put("user_id",user_id);
		//
		// Map result_auth = (Map)selectByPk("Auth.UserAuth_R001", map_auth);
		// model.addAttribute("userAuth",result_auth);
		// ===================================================================
		// model.addAttribute("selectUpPrg", list("Admin_04.selectUpPrg",map));

		// 상위프로그램 조회
//		List list = null;
//		try {
//			list = service.list("program.doSelectUpPrg", param);
//			log.debug("list = " + list.toString());
//		} catch (Exception e) {
//			// TODO Auto-generated catch block
//			e.printStackTrace();
//		}
//
//		model.addAttribute("selectUpPrg", list);
		return "/user/user";
	}
}
