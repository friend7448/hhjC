package hhj.service.User;

import java.util.Map;

/**
 * 
 * @author	: hhj
 * @Date	: 2018. 11. 1.
 * @version	: 1.0
 * @see		: 
 *
 */
public interface UserService {
	int insertUserNPriv(Map<String, Object> param) throws Exception;
	
	int updateUserNPriv(Map<String, Object> param) throws Exception;
	
	int deleteUserNPriv(Map<String, Object> param) throws Exception;
}
  