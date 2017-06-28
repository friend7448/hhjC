package hhj.service;

import java.util.List;
import java.util.Map;

public interface hhjService {
	int insert(String queryId, Map<String, Object> param) throws Exception;
	
	int update(String queryId, Map<String, Object> param) throws Exception;
	
	int delete(String queryId, Map<String, Object> param) throws Exception;
	
	int selectCnt(String queryId, Map<String, Object> param) throws Exception;
	
	Map<String, String> selectByPk(String queryId, Map<String, Object> param) throws Exception;
	
	List list(String queryId, Map<String, Object> param) throws Exception;
}
  