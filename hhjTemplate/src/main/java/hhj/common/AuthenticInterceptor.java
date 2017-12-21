package hhj.common;

import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import hhj.service.hhjService;

/**
 * @FileName : AuthenticInterceptor.java
 * @Project : hhjTemplate
 * @Date : 2017. 6. 28.
 * @작성자 : hhj
 * @변경이력 :
 * @프로그램 설명 :
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
		// 특정 체크에서 일치하지 않는다면
		// response.sendRedirect("특정 에러 페이지로 보낸다");
		// return false;
		
		// 인증 체크가 필요한 URL 체크
		for (int i = 0; i < urls.size(); i++) {
			if (request.getRequestURI().contains(urls.get(i))) {
				HttpSession session = request.getSession(false);

				if (session == null || session.getAttribute("USER_ID") == null) {
					log.debug("session null");
					redirectSignin(request, response);
					return false;
				}

				String userId = (String) session.getAttribute("USER_ID");
				int userSn = (int) session.getAttribute("USER_SN");
				String userName = (String) session.getAttribute("USER_NAME");
				int privgrpSn = (int) session.getAttribute("PRIVGRP_SN");

				Map<String, Object> param1 = new HashMap<String, Object>();
				param1.put("USER_SN", userSn);
				param1.put("PRIVGRP_SN", privgrpSn);
				param1.put("PROGRM_URL", "");

				List up_menu = null; // 상위 메뉴(헤더 - 메뉴 보이게)
				List menu = null; // 하위 메뉴(헤더 - 메뉴 보이게)
				List left_menu = null; // 왼쪽 메뉴
				List menusName = null; // 상위메뉴, 하위메뉴 명치
				List program_auth = null; // 읽기/쓰기 권한(컨텐츠 - curd 버튼 관련)

				try {
					log.debug("param1 = " + param1);
					up_menu = service.list("layout.doSelectUpProgram", param1);
					menu = service.list("layout.doSelectProgram", param1);

					param1.put("PROGRM_URL", request.getServletPath());
					
					left_menu = service.list("layout.doSelectProgram", param1);
					program_auth = service.list("layout.doSelectProgramAuth", param1);

					menusName = service.list("layout.doSelectProgramName", param1);
					
					log.debug("up_menu list = " + up_menu);
					log.debug("menu list = " + menu);
					log.debug("left_menu list = " + left_menu);
					log.debug("menusName list = " + menusName);
					log.debug("program_auth list = " + program_auth);

				} catch (Exception e) {
					// TODO: handle exception
					e.printStackTrace();
				}

				request.setAttribute("up_menu", up_menu);
				request.setAttribute("menu", menu);
				request.setAttribute("left_menu", left_menu);
				request.setAttribute("menus_name", menusName);
				request.setAttribute("program_auth", program_auth);
				request.setAttribute("user_name", userName);
			}
		}

		return super.preHandle(request, response, handler);
	}

	private void redirectSignin(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		try {
			log.debug("redirect!!!");
			response.sendRedirect("/hhjTemplate");
		} catch (IOException e) {
			// TODO Auto-generated catch block
			log.error(" @ exception	: " + e.getMessage());
		}
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
