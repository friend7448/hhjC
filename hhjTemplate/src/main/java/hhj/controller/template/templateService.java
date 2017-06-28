package hhj.controller.template;

import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import hhj.service.hhjService;

@Controller
public class templateService {
	@Resource(name = "hhjService")
    private hhjService service;

    Logger log = Logger.getLogger(this.getClass());

    //안되면 @RequestParam 파라메타 적용 참고.
    @RequestMapping("/templateS.do")
    public @ResponseBody Map<String, Object> templateS(Map<String, Object> commandMap) throws Exception 
    {
    	List list = null;
    	
    	try {
    		list = service.list("templateS", commandMap);
		} catch (Exception e) {
			// TODO: handle exception
			log.error(" @ exception	: " + e.getMessage());
		}
    	
    	commandMap.put("MainList", list);
    	
		return commandMap;
    }
    
    @RequestMapping("/templateSCnt.do")
    public @ResponseBody Map<String, Object> templateSCnt(Map<String, Object> commandMap) throws Exception 
    {
    	int cnt = 0;
    	    	
    	try {
    		cnt = service.selectCnt("templateSCnt", commandMap);
		} catch (Exception e) {
			// TODO: handle exception
			log.error(" @ exception	: " + e.getMessage());
		}
    			
		commandMap.put("SCnt", cnt);
		
		return commandMap;
    }  
    
    @RequestMapping("/templateI.do")
    public @ResponseBody Map<String, Object> templateI(Map<String, Object> commandMap) throws Exception 
    {
    	int result = -1;
		
		try {
			result = service.insert("templateI",  commandMap);
			
		} catch (Exception e) {
			// TODO: handle exception
			log.error(" @ exception	: " + e.getMessage());
		}
		
		String strResult = result != -1 ? "SUCCESS" : "FAILER"; 
		commandMap.put("RESULT", strResult);
		
		return commandMap;
    }
    
    @RequestMapping("/templateU.do")
    public @ResponseBody Map<String, Object> templateU(Map<String, Object> commandMap) throws Exception 
    {	
    	int result = 0;
    	
    	try {
    		result = service.update("templateU",  commandMap);
		} catch (Exception e) {
			// TODO: handle exception
			log.error(" @ exception	: " + e.getMessage());
		}
		
    	String strResult = (result > 0) ? "SUCCESS" : "FAILER"; 
    	commandMap.put("RESULT", strResult);
		
    	return commandMap;
    }
    
    @RequestMapping("/templateD.do")
    public @ResponseBody Map<String, Object> templateD(Map<String, Object> commandMap) throws Exception 
    {
		int result = 0;
		
		try {
			result = service.update("templateD",  commandMap);
		} catch (Exception e) {
			// TODO: handle exception
			log.error(" @ exception	: " + e.getMessage());
		}
		
		String strResult = (result > 0) ? "SUCCESS" : "FAILER"; 
		commandMap.put("RESULT", strResult);
		
		return commandMap;
    }
}
