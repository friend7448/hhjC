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

import hhj.common.jqgridPaging;
import hhj.service.hhjService;

/** 
* @FileName      : CommonContriller.java 
* @Project     : aa 
* @Date        : 2017. 7. 28. 
* @작성자          : hhj 
* @변경이력     : 
* @프로그램 설명     : CommonCURD 클래스 
*/
@Controller
public class CommonContriller {
	@Resource(name = "hhjService")
	private hhjService service;

	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/common/doSelect.do")
	public @ResponseBody Map<String, Object> doSelect(@RequestParam Map<String, Object> param) {
		log.debug("Select param = " + param);
		
		List list = null;
		int cnt = -1;

		try {
			cnt = service.selectCnt(param.get("ACTION") + "Cnt", param);
			log.debug("cnt = " + cnt);
			if(cnt > -1) {
				param.put("totalCount", cnt);
				param = jqgridPaging.setPaging(param);
				list = service.list((String) param.get("ACTION"), param);
				log.debug("list = " + list);
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
		log.debug("SelectDetail param = " + param);
		
		List list = null;
		
		try {
			list = service.list((String) param.get("ACTION"), param);
			log.debug("list = " + list);
		} catch (Exception e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		}
		
		param.put("response", list);
		
		return param;
	}
	
	@RequestMapping("/common/doInsert.do")
	public @ResponseBody Map<String, Object> doInsert(@RequestParam Map<String, Object> param) {
		log.debug("Insert param = " + param);
		
		int cnt = -1;
		String isSuccess = "FAIL";
		
		try {
			cnt = service.insert((String) param.get("ACTION"), param);
			log.debug("insert return = " + cnt);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = cnt > -1 ? "SUCC" : "FAIL";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
	
	@RequestMapping("/common/doUpdate.do")
	public @ResponseBody Map<String, Object> doUpdate(@RequestParam Map<String, Object> param) {
		log.debug("Update param = " + param);
		
		int cnt = 0;
		String isSuccess = "FAIL";
		
		try {
			cnt = service.update((String) param.get("ACTION"), param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = cnt > 0 ? "SUCC" : "FAIL";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
	
	@RequestMapping("/common/doDelete.do")
	public @ResponseBody Map<String, Object> doDelete(@RequestParam Map<String, Object> param) {
		log.debug("Delete param = " + param);
		
		int cnt = 0;
		String isSuccess = "FAIL";
		
		try {
			cnt = service.delete((String) param.get("ACTION"), param);
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = cnt > 0 ? "SUCC" : "FAIL";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
}
