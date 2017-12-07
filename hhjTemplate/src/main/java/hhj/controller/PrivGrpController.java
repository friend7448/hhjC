package hhj.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.json.simple.JSONArray;
import org.json.simple.JSONObject;
import org.json.simple.parser.JSONParser;
import org.json.simple.parser.ParseException;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import hhj.common.JsonUtil;
import hhj.common.jqgridPaging;
import hhj.service.hhjService;
import hhj.service.hhjServicePrivGrp;

/** 
* @FileName      : PrivgrpController.java 
* @Project     : hhjTemplate 
* @Date        : 2017. 10. 23. 
* @작성자          : hhj 
* @변경이력     : 
* @프로그램 설명     : 
*/
@Controller
public class PrivGrpController {
	@Resource(name = "hhjService")
	private hhjService service;
	
	@Resource(name = "hhjServicePrivGrp")
	private hhjServicePrivGrp servicePrivGrp;

	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/privgrp/privgrp.do")
	public String ProgramView(@RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - 권한그룹관리화면 view");

		return "/privgrp/privgrp";
	}
	
	@RequestMapping("/privgrp/doSelect2.do")
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
	
	
	/** 
	* @Method Name : doUpdate 
	* @변경이력      : 
	* @Method 설명     : 그룹별 권한 적용
	* @param param
	* @return 
	*/
	@RequestMapping("/privgrp/doUpdate2.do")
	public @ResponseBody Map<String, Object> doUpdate2(@RequestParam Map<String, Object> param) {
		//getMapFromJsonObject 함수 이용.
		log.debug("Update param = " + param);
		int result = 0;
		String isSuccess = "FAIL";
		
		//삭제 key
		Map<String, Object> map = new HashMap<String, Object>();
		map.put("PRIVGRP_SN", (String) param.get("PRIVGRP_SN"));
		
		try {
			JSONParser jsonParser = new JSONParser();
			JSONObject jsonobj = (JSONObject) jsonParser.parse((String) param.get("data"));
			JSONArray jsonArray = (JSONArray) jsonobj.get("list");
			List<Map<String, Object>> list = JsonUtil.getListMapFromJsonArray(jsonArray);
			
			result = servicePrivGrp.updatePrivGrpPriv(map, list);
		} catch (ParseException e1) {
			// TODO Auto-generated catch block
			e1.printStackTrace();
		} catch (Exception e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		isSuccess = result > 0 ? "SUCC" : "FAIL";
		param.put("isSuccess", isSuccess);
		
		return param;
	}
}
