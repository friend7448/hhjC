package hhj.service.User;

import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;
import hhj.service.hhjDAO;

/**
 * 
 * @author	: hhj
 * @Date	: 2018. 11. 1.
 * @version	: 1.0
 * @see		: 
 *
 */
@Service("hhjServiceUser")
public class UserServiceImpl extends EgovAbstractServiceImpl  implements UserService 
{
	Logger log = Logger.getLogger(this.getClass());
	
	/** cubridDAO */
    @Resource(name="hhjDAO")
    private hhjDAO hhjDAO;
    
	@Override
	public int insertUserNPriv(Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		int user_sn = (int) hhjDAO.insert("user.doInsert", param);
		param.put("user_sn", user_sn);
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
