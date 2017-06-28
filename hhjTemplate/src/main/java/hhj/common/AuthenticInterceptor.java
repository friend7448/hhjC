package hhj.common;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

/** 
* @FileName      : AuthenticInterceptor.java 
* @Project     : hhjC 
* @Date        : 2017. 6. 5. 
* @작성자          : hhj 
* @변경이력     : 
* @프로그램 설명     : controller로 인입 전 처리
*/
@Controller("authenticInterceptor")
public class AuthenticInterceptor extends HandlerInterceptorAdapter {
	List<String> urls;
	
	Logger log = Logger.getLogger(this.getClass());
	
	/** 
	* @Method Name : setUrls 
	* @변경이력      : 
	* @Method 설명     : 인증체크 필요없는 url set... 
	* @param urls 
	*/
	public void setUrls(List urls) {
		this.urls = urls;
	}
	
	@Override
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		//기능을 수행하고 Controller를 실행 하려면
	    // return true;

	   // 특정 체크에서 일치하지 않는다면
	   // response.sendRedirect("특정 에러 페이지로 보낸다");
	   // return false;

	    // 인증 체크가 필요 없는 URL 체크
		for (int i = 0; i < urls.size(); i++) {
			if (request.getRequestURI().contains(urls.get(i))) {
				log.debug("AuthenticInterceptor Class - 세션 체크 없이 넘어감!, 인터셉트 종료");

				return true;
			}
		}

		// 세션이 있는지 체크
		log.debug("AuthenticInterceptor Class - 세션 체크 기능 추가하면됨!");
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
