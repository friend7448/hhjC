package hhj.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


/** 
* @FileName      : hhjServiceImpl.java 
* @Project     : hhjTemplate 
* @Date        : 2017. 6. 28. 
* @작성자          : hhj 
* @변경이력     : 
* @프로그램 설명     : 
*/
@Service("hhjService")
public class hhjServiceImpl extends EgovAbstractServiceImpl  implements hhjService 
{
	Logger log = Logger.getLogger(this.getClass());
	
	/** cubridDAO */
    @Resource(name="hhjDAO")
    private hhjDAO hhjDAO;
    
	
	
	@Override
	public int insert(String queryId, Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return (int) hhjDAO.insert(queryId, param);
	}

	@Override
	public int update(String queryId, Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return hhjDAO.update(queryId, param);
	}

	@Override
	public int delete(String queryId, Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return hhjDAO.delete(queryId, param);
	}
	
	@Override
	public List list(String queryId, Map<String, Object> param)
			throws Exception {
		// TODO Auto-generated method stub
		return hhjDAO.list(queryId, param);
	}

	@Override
	public int selectCnt(String queryId, Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return (int) hhjDAO.select(queryId, param);
	}

	@SuppressWarnings("unchecked")
	@Override
	public Map<String, String> selectByPk(String queryId, Map<String, Object> param) throws Exception {
		// TODO Auto-generated method stub
		return (Map<String, String>) hhjDAO.select(queryId, param);
	}

	/** 
	* @Method Name : updatePrivGrpPriv 
	* @변경이력      : 
	* @Method 설명     : 권한그룹별 권한 적용
	* @param map
	* @param list
	* @return 
	*/
//	@Override
//	public int updatePrivGrpPriv(Map<String, Object> map, List<Map<String, Object>> list) throws Exception { 
//		// TODO Auto-generated method stub
//		hhjDAO.delete("privgrp.doDelete2", map);
//		
//		Map<String, Object> row = new HashMap<String, Object>();
//		String privgrp_sn =  (String) map.get("PRIVGRP_SN");
//
//		if(list != null) {
//			for (int i=0; i < list.size(); i++) {
//				row = list.get(i);
//				row.put("PRIVGRP_SN", privgrp_sn);
//				row.put("PRIV_SN", i);
//				if(row.get("WRITE_YN").equals("Y")) {
//					row.put("INQIRE_YN", "Y");
//				}
//				hhjDAO.insert("privgrp.doInsert2", row);
//				row.clear();
//			}
//		}
//		return 1;
//	}
//
//	@Override
//	public int insertUserNPriv(Map<String, Object> param) throws Exception {
//		// TODO Auto-generated method stub
//		int USER_SN = (int) hhjDAO.insert("user.doInsert", param);
//		param.put("USER_SN", USER_SN);
//		hhjDAO.insert("user.doInsert2", param);
//		return 1;
//	}
//
//	@Override
//	public int updateUserNPriv(Map<String, Object> param) throws Exception {
//		// TODO Auto-generated method stub
//		hhjDAO.update("user.doUpdate", param);
//		hhjDAO.update("user.doUpdate2", param);
//		return 1;
//	}
//
//	@Override
//	public int deleteUserNPriv(Map<String, Object> param) throws Exception {
//		// TODO Auto-generated method stub
//		hhjDAO.delete("user.doDelete2", param);
//		hhjDAO.delete("user.doDelete", param);
//		return 1;
//	}
	
}
