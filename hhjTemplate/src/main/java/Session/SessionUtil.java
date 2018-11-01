package Session;

import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

/**
 * 
 * @author	: hhj
 * @Date	: 2018. 11. 1.
 * @version	: 1.0
 * @see		: 
 *
 */
public class SessionUtil {
	/**
	 * session 값 전달
	 * 
	 * @return
	 * 
	 */
	public static boolean isLoginChk() {
		String userId = getUserSn();
		
		if (userId != null && !userId.equals("")) {
			return true;
		} else {
			return false;
		}
	}
	
	public static String getUserSn() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getUserSn();
		} catch (NullPointerException e) {
			return "";
		}
	}
	public static String getUserId() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getUserId();
		} catch (NullPointerException e) {
			return "";
		}
	}
	public static String getUserName() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getUserName();
		} catch (NullPointerException e) {
			return "";
		}
	}
	public static String getUserPw() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getUserPw();
		} catch (NullPointerException e) {
			return "";
		}
	}
	public static String getCell() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getCell();
		} catch (NullPointerException e) {
			return "";
		}
	}
	public static String getEmail() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getEmail();
		} catch (NullPointerException e) {
			return "";
		}
	}
	public static String getUpdtDt() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getUpdtDt();
		} catch (NullPointerException e) {
			return "";
		}
	}
	public static String getUpdusrSn() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getUpdusrSn();
		} catch (NullPointerException e) {
			return "";
		}
	}
	
	public static String getPrivgrpSn() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getPrivgrpSn();
		} catch (NullPointerException e) {
			return "";
		}
	}
	
	public static String getPrivgrpName() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getPrivgrpName();
		} catch (NullPointerException e) {
			return "";
		}
	}
	
	public static String getPrivgrpDesc() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getPrivgrpDesc();
		} catch (NullPointerException e) {
			return "";
		}
	}
	
	public static String getPriort() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getPriort();
		} catch (NullPointerException e) {
			return "";
		}
	}
	
	public static String getUseYn() {
		try {
			return ((SessionInfo) SessionUtil.getAuthenticatedUser()).getUseYn();
		} catch (NullPointerException e) {
			return "";
		}
	}
	
	public static Object getAuthenticatedUser() {
		return RequestContextHolder.getRequestAttributes().getAttribute("loginVO", RequestAttributes.SCOPE_SESSION);
	}

	public static Boolean isAuthenticated() {
		if (RequestContextHolder.getRequestAttributes() == null) {
			return false;
		} else {
			if (RequestContextHolder.getRequestAttributes().getAttribute("loginVO", RequestAttributes.SCOPE_SESSION) == null) {
				return false;
			} else {
				return true;
			}
		}
	}
}