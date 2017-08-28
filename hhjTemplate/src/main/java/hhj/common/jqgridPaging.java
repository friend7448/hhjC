package hhj.common;

import java.util.Map;

public class jqgridPaging {
	
	/** 
	* @Method Name : loadJqgridJason 
	* @변경이력      : 
	* @Method 설명     : 
	* @param params
	* @return 
	*/
	public static Map<String, Object> setPaging(Map<String, Object> params) {
//		int page = Integer.parseInt("" + params.get("page"));
		/*
		 * 파라메터 추출
		 */
		int page = Integer.parseInt((String) params.get("page"));
		int rows = Integer.parseInt((String) params.get("rows"));
//		String sortoder = (String) params.get("sord");
//		String sidx = (String) params.get("sidx");
		int totalCount = (int) params.get("totalCount");
		/*
		 * 페이징처리 알고리즘
		 */
		int start_row = (page-1) * rows+1;
		int end_row = (page-1) * rows + rows;
		
		/*
		 * 총Count
		 */
		int total_page = totalCount / rows;
		if(totalCount%rows != 0) total_page++;
		
		/*
		 * 페이징처리 파라메터
		 */	
		params.put("START_ROW", start_row);
		params.put("END_ROW",end_row);
		params.put("TOTAL", total_page);
		params.put("RECORDS", params.get("rows"));
		
		return params;
	}
}
	