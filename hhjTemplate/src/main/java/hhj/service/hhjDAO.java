package hhj.service;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Repository;

import com.ibatis.sqlmap.client.SqlMapClient;

import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

/**
 * 
 * @author	: hhj
 * @Date	: 2018. 11. 1.
 * @version	: 1.0
 * @see		: 
 *
 */
@Repository("hhjDAO")
public class hhjDAO extends EgovAbstractDAO {

	Logger log = Logger.getLogger(this.getClass());
	
	@Override
	@Resource(name = "sqlMapClient")
	public void setSuperSqlMapClient(SqlMapClient sqlMapClient) {
		// TODO Auto-generated method stub
		super.setSuperSqlMapClient(sqlMapClient);
	}
}
