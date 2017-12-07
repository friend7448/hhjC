package hhj.service;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


/** 
* @FileName      : hhjServiceUserImpl.java 
* @Project     : hhjTemplate 
* @Date        : 2017. 11. 7. 
* @작성자          : hhj 
* @변경이력     : 
* @프로그램 설명     : 
*/
@Service("hhjServiceUser")
public class hhjServiceUserImpl extends EgovAbstractServiceImpl  implements hhjServiceUser 
{
	Logger log = Logger.getLogger(this.getClass());
	
	/** cubridDAO */
    @Resource(name="hhjDAO")
    private hhjDAO hhjDAO;
    
	@Override
	public int insertUserNPriv(Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		int USER_SN = (int) hhjDAO.insert("user.doInsert", param);
		param.put("USER_SN", USER_SN);
		hhjDAO.insert("user.doInsert2", param);
		return 1;
	}

	@Override
	public int updateUserNPriv(Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		hhjDAO.update("user.doUpdate", param);
		hhjDAO.update("user.doUpdate2", param);
		return 1;
	}

	@Override
	public int deleteUserNPriv(Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		hhjDAO.delete("user.doDelete2", param);
		hhjDAO.delete("user.doDelete", param);
		return 1;
	}
}
