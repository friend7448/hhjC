package hhj.common;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import Session.SessionUtil;
import hhj.service.hhjService;


/**
 * 
 * @author	: hhj
 * @Date	: 2018. 11. 1.
 * @version	: 1.0
 * @see		:  
 *
 */
@Controller("authenticInterceptor")
public class AuthenticInterceptor extends HandlerInterceptorAdapter {
	@Resource(name = "hhjService")
	private hhjService service;

	List<String> urls;

	Logger log = Logger.getLogger(this.getClass());

	/**
	 * @Method Name : setUrls
	 * @변경이력 :
	 * @Method 설명 : 인증체크 할 url set...
	 * @param urls
	 */
	public void setUrls(List urls) {
		log.debug("seturls method urls = " + urls);

		this.urls = urls;
	}

	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// *** 세션 체크 *** 
		if (!SessionUtil.isLoginChk()) {
			log.debug("hhj - no session");
			return super.preHandle(request, response, handler);
		} else {
			// 인증 체크가 필요한 URL 체크
			for (int i = 0; i < urls.size(); i++) {
				if (request.getRequestURI().contains(urls.get(i))) {
					Map<String, Object> param1 = new HashMap<String, Object>();
					// *** 헤더 ***
					param1.put("user_sn", SessionUtil.getUserSn());
					param1.put("progrm_url", "");
					param1.put("privgrp_sn", SessionUtil.getPrivgrpSn());
			    	
					request.setAttribute("user_name", SessionUtil.getUserName()); 
					request.setAttribute("up_menu", service.list("layout.doSelectUpProgram", param1));
					
					// *** 왼쪽 메뉴 *** 
					List left_menu = null; // 왼쪽 메뉴
					List menusName = null; // 상위메뉴, 하위메뉴 명치
					
					param1.put("progrm_url", request.getServletPath());
					log.debug("param = " + param1.toString());
					left_menu = service.list("layout.doSelectProgram", param1);
					menusName = service.list("layout.doSelectProgramName", param1);
					log.debug("left_menu list = " + left_menu);
					log.debug("menusName list = " + menusName);

					request.setAttribute("left_menu", left_menu);
					request.setAttribute("menus_name", menusName);
					
					// *** 권한체크 *** 
					List program_auth = null; // 읽기/쓰기 권한(컨텐츠 - curd 버튼 관련)
					
					program_auth = service.list("layout.doSelectProgramAuth", param1);
					log.debug("program_auth list = " + program_auth);
					
					request.setAttribute("program_auth", program_auth);
				}
			}
		}

		return super.preHandle(request, response, handler);
	}

	@Override
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterCompletion(request, response, handler, ex);
	}

	@Override
	public void afterConcurrentHandlingStarted(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		// TODO Auto-generated method stub
		super.afterConcurrentHandlingStarted(request, response, handler);
	}

	@Override
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {
		// TODO Auto-generated method stub
		super.postHandle(request, response, handler, modelAndView);
	}

}
