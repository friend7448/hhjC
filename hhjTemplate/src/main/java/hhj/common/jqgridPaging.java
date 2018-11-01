package hhj.common;

import java.util.Map;


/**
 * 
 * @author	: hhj
 * @Date	: 2018. 11. 1.
 * @version	: 1.0
 * @see		: 
 *
 */
public class jqgridPaging {

	public static Map<String, Object> setPaging(Map<String, Object> params) {

		int page = Integer.parseInt((String) params.get("page"));	// 보여줄 페이지 넘버
		int rows = Integer.parseInt((String) params.get("rows"));	// 페이지 표출 갯수
		int totalCount = (int) params.get("totalCount");			// 쿼리 결과 총 건수

		
		// 페이징처리 알고리즘
		int start_row = (page-1) * rows+1;
		int end_row = (page-1) * rows + rows;

		// 총Count
		int total_page = totalCount / rows;
		if(totalCount%rows != 0) total_page++;

		// 페이징처리 파라메터
		params.put("START_ROW", start_row);
		params.put("END_ROW",end_row);
		params.put("TOTAL", total_page);
		params.put("RECORDS", rows);
		
		return params;
	}
}
	