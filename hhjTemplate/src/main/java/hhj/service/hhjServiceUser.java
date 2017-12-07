package hhj.service;

import java.util.Map;


/** 
* @FileName      : hhjServiceUser.java 
* @Project     : hhjTemplate 
* @Date        : 2017. 11. 7. 
* @작성자          : hhj 
* @변경이력     : 
* @프로그램 설명     : 
*/
public interface hhjServiceUser {
	int insertUserNPriv(Map<String, Object> param) throws Exception;
	
	int updateUserNPriv(Map<String, Object> param) throws Exception;
	
	int deleteUserNPriv(Map<String, Object> param) throws Exception;
}
  