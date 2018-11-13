package hhj.controller;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Session.SessionUtil;
import hhj.common.jqgridPaging;
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
public class CommonController {
	@Resource(name = "hhjService")
	private hhjService service;

	Logger log = Logger.getLogger(this.getClass());
	
	@RequestMapping(value = "/{a}/{b}.do")
	public String returnUrl(@PathVariable String a, @PathVariable String b, @RequestParam Map<String, Object> param, Model model) throws Exception {
		log.debug("hhj - /{a}/{b}.do");
		
		int cnt = -1;
		String isSuccess = "fail";
		
		String query_id = (String) param.get("action");
		param.put("updusr_sn", SessionUtil.getUserSn());
		
		if(query_id == null) {
			log.debug("query_id is null");
		} else if(query_id.contains("Insert")) {
			log.debug("hhj - param : = " + param);
			
			try {
				// 등록, 수정자 정보 저장시 사용. 사용자 ID 세팅
				cnt = service.insert((String) param.get("action"), param);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			isSuccess = cnt > -1 ? "succ" : "fail";
			param.put("isSuccess", isSuccess);
		} else if(query_id.contains("Update")) {
			log.debug("hhj - param : = " + param);
			
			try {
				cnt = service.update((String) param.get("action"), param);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			isSuccess = cnt > 0 ? "succ" : "fail";
			param.put("isSuccess", isSuccess);
		} else if(query_id.contains("Delete")) {
			log.debug("hhj - param : = " + param);
			
			try {
				cnt = service.delete((String) param.get("action"), param);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			
			isSuccess = cnt > 0 ? "succ" : "fail";
			param.put("isSuccess", isSuccess);
		}
		
		model.addAttribute("parm", param);
		
		return "/" + a + "/" + b;
	}
	
	@RequestMapping("/common/doSelect.do")
	public @ResponseBody Map<String, Object> doSelect(@RequestParam Map<String, Object> param) {
		log.debug("hhj - /common/doSelect.do");
		log.debug("hhj - param : " + param);
		
		List list = null;
		int cnt = -1;

		try {
			cnt = service.selectCnt(param.get("action") + "Cnt", param);
			if(cnt > -1) {
				param.put("totalCount", cnt);
				param = jqgridPaging.setPaging(param);
				list = service.list((String) param.get("action"), param);
				log.debug("hhj - result list : " + list);
			}
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		param.put("totalCount", cnt);
		param.put("rows", list);
		
		return param;
	}
	
	@RequestMapping("/common/doSelectDetail.do")
	public @ResponseBody Map<String, Object> doSelectDetail(@RequestParam Map<String, Object> param) {
		log.debug("hhj - /common/doSelectDetail.do");
		log.debug("hhj - param : " + param);
		
		List list = null;
		
		try {
			list = service.list((String) param.get("action"), param);
			log.debug("hhj - result list : " + list);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		param.put("response", list);
		
		return param;
	}
	
	@RequestMapping("/common/doInsert.do")
	public @ResponseBody Map<String, Object> doInsert(@RequestParam Map<String, Object> param) {
		log.debug("hhj - /common/doInsert.do");
		
		int cnt = -1;
		String isSuccess = "fail";
		
		try {
			// 등록, 수정자 정보 저장시 사용. 사용자 ID 세팅
			param.put("updusr_sn", SessionUtil.getUserSn());
			cnt = service.insert((String) param.get("action"), param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = cnt > -1 ? "succ" : "fail";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
	
	@RequestMapping("/common/doUpdate.do")
	public @ResponseBody Map<String, Object> doUpdate(@RequestParam Map<String, Object> param) {
		log.debug("hhj - /common/doUpdate.do");
		
		int cnt = 0;
		String isSuccess = "fail";
		
		try {
			// 등록, 수정자 정보 저장시 사용. 사용자 ID 세팅
			param.put("updusr_sn", SessionUtil.getUserSn());
			cnt = service.update((String) param.get("action"), param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = cnt > 0 ? "succ" : "fail";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
	
	@RequestMapping("/common/doDelete.do")
	public @ResponseBody Map<String, Object> doDelete(@RequestParam Map<String, Object> param) {
		log.debug("hhj - /common/doDelete.do");
		
		int cnt = 0;
		String isSuccess = "fail";
		
		try {
			param.put("updusr_sn", SessionUtil.getUserSn());
			cnt = service.delete((String) param.get("action"), param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = cnt > 0 ? "succ" : "fail";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
	
}
