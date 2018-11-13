package hhj.service.PrivGrp;

import java.util.HashMap;
import java.util.List;
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
@Service("hhjServicePrivGrp")
public class PrivGrpServiceImpl extends EgovAbstractServiceImpl  implements PrivGrpService 
{
	Logger log = Logger.getLogger(this.getClass());
	
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
		String privgrp_sn =  (String) map.get("privgrp_sn");

		if(list != null) {
			for (int i=0; i < list.size(); i++) {
				row = list.get(i);
				row.put("privgrpSn", privgrp_sn);
				row.put("privSn", i);
				if(row.get("writeYn").equals("Y")) {
					row.put("inqireYn", "Y");
				}
				hhjDAO.insert("privgrp.doInsert2", row);
				row.clear();
			}
		}
		return 1;
	}
}
