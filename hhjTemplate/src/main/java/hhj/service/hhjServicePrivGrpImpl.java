package hhj.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Service;

import egovframework.rte.fdl.cmmn.EgovAbstractServiceImpl;


/** 
* @FileName      : hhjServicePrivGrpImpl.java 
* @Project     : hhjTemplate 
* @Date        : 2017. 11. 7. 
* @작성자          : hhj 
* @변경이력     : 
* @프로그램 설명     : 
*/
@Service("hhjServicePrivGrp")
public class hhjServicePrivGrpImpl extends EgovAbstractServiceImpl  implements hhjServicePrivGrp 
{
	Logger log = Logger.getLogger(this.getClass());
	
	/** cubridDAO */
    @Resource(name="hhjDAO")
    private hhjDAO hhjDAO;
	
	/** 
	* @Method Name : updatePrivGrpPriv 
	* @변경이력      : 
	* @Method 설명     : 권한그룹별 권한 적용
	* @param map
	* @param list
	* @return 
	*/
	@Override
	public int updatePrivGrpPriv(Map<String, Object> map, List<Map<String, Object>> list) throws Exception { 
		// TODO Auto-generated method stub
		hhjDAO.delete("privgrp.doDelete2", map);
		
		Map<String, Object> row = new HashMap<String, Object>();
		String privgrp_sn =  (String) map.get("PRIVGRP_SN");

		if(list != null) {
			for (int i=0; i < list.size(); i++) {
				row = list.get(i);
				row.put("PRIVGRP_SN", privgrp_sn);
				row.put("PRIV_SN", i);
				if(row.get("WRITE_YN").equals("Y")) {
					row.put("INQIRE_YN", "Y");
				}
				hhjDAO.insert("privgrp.doInsert2", row);
				row.clear();
			}
		}
		return 1;
	}
}
