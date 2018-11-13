package hhj.controller;

import java.security.PrivateKey;
import java.sql.SQLException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import Session.SessionInfo;
import Session.SessionUtil;
import hhj.common.RSAEngine;
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
public class SignInController {
	@Resource(name = "hhjService")
	private hhjService service;
	
	Logger log = Logger.getLogger(this.getClass());

	@RequestMapping("/SignIn/SignIn.do")
	public String signin(HttpServletRequest request, @RequestParam Map<String, Object> param, Model model) {
		log.debug("hhj - /SignIn/SignIn.do");
		
		if (SessionUtil.isLoginChk() == true) 
		{	       
	        return "redirect:/Main/Main.do";
	    } else 
	    {
	        /* ====== 로그인시 ID, PASSWORD 암호화를 위한 처리 Start =========== */        
	        Map<String, Object> publicKeyMap = RSAEngine.getPublicKeyString(request);
	        
	        if (publicKeyMap != null) {
	            model.addAttribute("publicKeyMap",   publicKeyMap);
	        }        
	        /* ====== 로그인시 ID, PASSWORD 암호화를 위한 처리 End =========== */
	        
	        return "/SignIn/SignIn";
	    }
	}
	
	@RequestMapping("/SignIn/doLogin.do")
	public @ResponseBody Map<String, Object> doLogin(@ModelAttribute("sessionVO") SessionInfo sessionInfoVO, @RequestParam Map<String, Object> param,
			HttpSession session) {
		log.debug("hhj - /SignIn/doLogin.do");
		log.debug("hhj - param : " + param);
		
		List list = null;
		
		String securedUserId = (String) param.get("securedUserId");
        String securedPwd    = (String) param.get("securedPwd");
		
		try {
            if (securedUserId == null || securedUserId.equals("") || securedPwd == null || securedPwd.equals("")) {
            	param.put("isSuccess", "fail");
				param.put("msg", "아이디 또는 비밀번호가 입력되지 않았습니다.");
            } else {
                /**
                 * 암호화된 비밀번호를 복호화 한다.
                 */
                PrivateKey privateKey = (PrivateKey) session.getAttribute("rsaPrivateKey");
                
                if (privateKey == null) {
                	param.put("isSuccess", "fail");
                	param.put("msg", "암호화 정보를 찾을 수 없습니다."); 
                } else {
                    String deUserId = RSAEngine.decryptRsa(privateKey, securedUserId); // ID 복호화
                    String dePwd = RSAEngine.decryptRsa(privateKey, securedPwd); // password 복호화
                    
                    param.put("user_id", deUserId);
                    param.put("user_pw", dePwd);
                    
                    list = service.list((String) param.get("action"), param);
                    
                    if (list == null || list.size() <= 0 ) { 
                    	param.put("isSuccess", "fail");
                    	param.put("msg", "존재하지 않는 사용자입니다."); 
                        
                    } else {
                    	SessionInfo resultvo = (SessionInfo) list.get(0);
                        
                        //로그인
                        param.put("isSuccess", "succ");
                        param.put("msg", "");
                        
                        session.setAttribute("loginVO", resultvo); // 사용자정보 세션저장
                    }
                }
            } 
            
        } catch (NullPointerException e) {
        	param.put("isSuccess", "fail");
			param.put("msg", e.toString());
            log.error(e);
        } catch (Exception e) {
        	param.put("isSuccess", "fail");
			param.put("msg", e.toString()); 
            log.error(e);
        }
        
		param.put("response", list);
		
		return param;
	}
	
	@RequestMapping("/SignIn/SignOut.do")
	public String signout(@RequestParam Map<String, Object> param, HttpSession session) {
		log.debug("hhj - 로그아웃");
		
		session.invalidate();
		
		return "redirect:/";
	}
	
	 /**
     * 비밀번호, 생년월일 변경 창
     * 
     * @return String
     * @exception Exception
     */
    @RequestMapping("/SignIn/changeInfoPopUp.do")
    public String changeInfo(Model model, @RequestParam Map<String, Object> commandMap, HttpServletRequest request) throws Exception {
    	log.debug("hhj - changeInfoPopUp.do");

    	//        HttpSession session = request.getSession();
        // session.removeAttribute("rsaPrivateKey"); // 키의 재사용을 막는다. 항상 새로운 키를 받도록 강제

        Map<String, Object> publicKeyMap = RSAEngine.getPublicKeyString(request);

        if (publicKeyMap != null) {
            model.addAttribute("publicKeyMap", publicKeyMap);
        }

        return "/signin/changeInfoPopUp";
    }
	
	@RequestMapping("/SignIn/changeInfoIUD.do")
	public @ResponseBody Map<String, Object> changeInfoIUD(@RequestParam Map<String, Object> param, HttpSession session) {
		log.debug("hhj - /SignIn/changeInfoIUD.do");
		
		int cnt = 0;
		String isSuccess = "fail";
		List list = null;
		
		PrivateKey privateKey = (PrivateKey) session.getAttribute("rsaPrivateKey");
		
		try {
			if (privateKey == null) {
				param.put("isSuccess", "fail");
				param.put("msg", "암호화 비밀키 정보를 찾을 수 없습니다."); 
	        } else {
	        	String prev_pw = RSAEngine.decryptRsa(privateKey, (String) param.get("securedPrevPwd")); // ID 복호화
	        	String new_pw = RSAEngine.decryptRsa(privateKey, (String) param.get("securedNewPwd")); // ID 복호화
	        	param.put("prev_pw", prev_pw);
	        	param.put("new_pw", new_pw);
	            param.put("user_sn", SessionUtil.getUserSn()); // 사용자 Sn
	
            	list = service.list("layout.doSelectPasswd", param);
            	
            	if(list.size() > 0) {
            		Map<String, String> pw = (Map<String, String>) list.get(0);
            		
            		String pw_OXCheck = pw.get("userPw");
            		
            		if(pw_OXCheck.equals("X")) {
            			param.put("isSuccess", "fail");
            			param.put("msg", "현재 비밀번호가 일치 하지 않습니다."); 
            		} else if(pw_OXCheck.equals("O")) {
            			cnt = service.update("layout.doUpdatePassword", param);
            		}
            		
            		isSuccess = cnt > 0 ? "succ" : "fail";
            		param.put("isSuccess", isSuccess);
            	}
	        }
	    } catch (SQLException e) {
	        /** SPARROW : IMPROPER_CHECK_FOR_UNUSUAL_OR_EXCEPTIONAL_CONDITION 조치 **/
	    	param.put("isSuccess", "fail");
			param.put("msg", e.getMessage()); 
	        log.error("에러발생" + e.getMessage());
	    } catch (Exception e) {
	    	param.put("isSuccess", "fail");
			param.put("msg", e.getMessage()); 
	        log.error("에러발생" + e.getMessage());
	    }
			
		return param;
	}
}
