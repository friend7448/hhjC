package mybatis.generator.model;

import java.util.ArrayList;
import java.util.List;

public class IsMenuExample {
    /**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	protected String orderByClause;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	protected boolean distinct;
	/**
	 * This field was generated by MyBatis Generator. This field corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */protected List<Criteria> oredCriteria;

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */public IsMenuExample(){oredCriteria=new ArrayList<Criteria>();}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	public void setOrderByClause(String orderByClause) {
		this.orderByClause = orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	public String getOrderByClause() {
		return orderByClause;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	public void setDistinct(boolean distinct) {
		this.distinct = distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	public boolean isDistinct() {
		return distinct;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */public List<Criteria> getOredCriteria(){return oredCriteria;}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	public void or(Criteria criteria) {
		oredCriteria.add(criteria);
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	public Criteria or() {
		Criteria criteria = createCriteriaInternal();
		oredCriteria.add(criteria);
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	public Criteria createCriteria() {
		Criteria criteria = createCriteriaInternal();
		if (oredCriteria.size() == 0) {
			oredCriteria.add(criteria);
		}
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	protected Criteria createCriteriaInternal() {
		Criteria criteria = new Criteria();
		return criteria;
	}

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	public void clear() {
		oredCriteria.clear();
		orderByClause = null;
		distinct = false;
	}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */protected abstract static class GeneratedCriteria {protected List<Criterion> criteria;protected GeneratedCriteria(){super();criteria=new ArrayList<Criterion>();}public boolean isValid(){return criteria.size() > 0;}public List<Criterion> getAllCriteria(){return criteria;}public List<Criterion> getCriteria(){return criteria;}protected void addCriterion(String condition){if (condition == null){throw new RuntimeException("Value for condition cannot be null");}criteria.add(new Criterion(condition));}protected void addCriterion(String condition,Object value,String property){if (value == null){throw new RuntimeException("Value for " + property + " cannot be null");}criteria.add(new Criterion(condition,value));}protected void addCriterion(String condition,Object value1,Object value2,String property){if (value1 == null || value2 == null){throw new RuntimeException("Between values for " + property + " cannot be null");}criteria.add(new Criterion(condition,value1,value2));}public Criteria andMenuIdIsNull(){addCriterion("MENU_ID is null");return (Criteria)this;}public Criteria andMenuIdIsNotNull(){addCriterion("MENU_ID is not null");return (Criteria)this;}public Criteria andMenuIdEqualTo(String value){addCriterion("MENU_ID =",value,"menuId");return (Criteria)this;}public Criteria andMenuIdNotEqualTo(String value){addCriterion("MENU_ID <>",value,"menuId");return (Criteria)this;}public Criteria andMenuIdGreaterThan(String value){addCriterion("MENU_ID >",value,"menuId");return (Criteria)this;}public Criteria andMenuIdGreaterThanOrEqualTo(String value){addCriterion("MENU_ID >=",value,"menuId");return (Criteria)this;}public Criteria andMenuIdLessThan(String value){addCriterion("MENU_ID <",value,"menuId");return (Criteria)this;}public Criteria andMenuIdLessThanOrEqualTo(String value){addCriterion("MENU_ID <=",value,"menuId");return (Criteria)this;}public Criteria andMenuIdLike(String value){addCriterion("MENU_ID like",value,"menuId");return (Criteria)this;}public Criteria andMenuIdNotLike(String value){addCriterion("MENU_ID not like",value,"menuId");return (Criteria)this;}public Criteria andMenuIdIn(List<String> values){addCriterion("MENU_ID in",values,"menuId");return (Criteria)this;}public Criteria andMenuIdNotIn(List<String> values){addCriterion("MENU_ID not in",values,"menuId");return (Criteria)this;}public Criteria andMenuIdBetween(String value1,String value2){addCriterion("MENU_ID between",value1,value2,"menuId");return (Criteria)this;}public Criteria andMenuIdNotBetween(String value1,String value2){addCriterion("MENU_ID not between",value1,value2,"menuId");return (Criteria)this;}public Criteria andMenuNameIsNull(){addCriterion("MENU_NAME is null");return (Criteria)this;}public Criteria andMenuNameIsNotNull(){addCriterion("MENU_NAME is not null");return (Criteria)this;}public Criteria andMenuNameEqualTo(String value){addCriterion("MENU_NAME =",value,"menuName");return (Criteria)this;}public Criteria andMenuNameNotEqualTo(String value){addCriterion("MENU_NAME <>",value,"menuName");return (Criteria)this;}public Criteria andMenuNameGreaterThan(String value){addCriterion("MENU_NAME >",value,"menuName");return (Criteria)this;}public Criteria andMenuNameGreaterThanOrEqualTo(String value){addCriterion("MENU_NAME >=",value,"menuName");return (Criteria)this;}public Criteria andMenuNameLessThan(String value){addCriterion("MENU_NAME <",value,"menuName");return (Criteria)this;}public Criteria andMenuNameLessThanOrEqualTo(String value){addCriterion("MENU_NAME <=",value,"menuName");return (Criteria)this;}public Criteria andMenuNameLike(String value){addCriterion("MENU_NAME like",value,"menuName");return (Criteria)this;}public Criteria andMenuNameNotLike(String value){addCriterion("MENU_NAME not like",value,"menuName");return (Criteria)this;}public Criteria andMenuNameIn(List<String> values){addCriterion("MENU_NAME in",values,"menuName");return (Criteria)this;}public Criteria andMenuNameNotIn(List<String> values){addCriterion("MENU_NAME not in",values,"menuName");return (Criteria)this;}public Criteria andMenuNameBetween(String value1,String value2){addCriterion("MENU_NAME between",value1,value2,"menuName");return (Criteria)this;}public Criteria andMenuNameNotBetween(String value1,String value2){addCriterion("MENU_NAME not between",value1,value2,"menuName");return (Criteria)this;}public Criteria andUpMenuIdIsNull(){addCriterion("UP_MENU_ID is null");return (Criteria)this;}public Criteria andUpMenuIdIsNotNull(){addCriterion("UP_MENU_ID is not null");return (Criteria)this;}public Criteria andUpMenuIdEqualTo(String value){addCriterion("UP_MENU_ID =",value,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdNotEqualTo(String value){addCriterion("UP_MENU_ID <>",value,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdGreaterThan(String value){addCriterion("UP_MENU_ID >",value,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdGreaterThanOrEqualTo(String value){addCriterion("UP_MENU_ID >=",value,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdLessThan(String value){addCriterion("UP_MENU_ID <",value,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdLessThanOrEqualTo(String value){addCriterion("UP_MENU_ID <=",value,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdLike(String value){addCriterion("UP_MENU_ID like",value,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdNotLike(String value){addCriterion("UP_MENU_ID not like",value,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdIn(List<String> values){addCriterion("UP_MENU_ID in",values,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdNotIn(List<String> values){addCriterion("UP_MENU_ID not in",values,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdBetween(String value1,String value2){addCriterion("UP_MENU_ID between",value1,value2,"upMenuId");return (Criteria)this;}public Criteria andUpMenuIdNotBetween(String value1,String value2){addCriterion("UP_MENU_ID not between",value1,value2,"upMenuId");return (Criteria)this;}public Criteria andProgrmUrlIsNull(){addCriterion("PROGRM_URL is null");return (Criteria)this;}public Criteria andProgrmUrlIsNotNull(){addCriterion("PROGRM_URL is not null");return (Criteria)this;}public Criteria andProgrmUrlEqualTo(String value){addCriterion("PROGRM_URL =",value,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlNotEqualTo(String value){addCriterion("PROGRM_URL <>",value,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlGreaterThan(String value){addCriterion("PROGRM_URL >",value,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlGreaterThanOrEqualTo(String value){addCriterion("PROGRM_URL >=",value,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlLessThan(String value){addCriterion("PROGRM_URL <",value,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlLessThanOrEqualTo(String value){addCriterion("PROGRM_URL <=",value,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlLike(String value){addCriterion("PROGRM_URL like",value,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlNotLike(String value){addCriterion("PROGRM_URL not like",value,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlIn(List<String> values){addCriterion("PROGRM_URL in",values,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlNotIn(List<String> values){addCriterion("PROGRM_URL not in",values,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlBetween(String value1,String value2){addCriterion("PROGRM_URL between",value1,value2,"progrmUrl");return (Criteria)this;}public Criteria andProgrmUrlNotBetween(String value1,String value2){addCriterion("PROGRM_URL not between",value1,value2,"progrmUrl");return (Criteria)this;}public Criteria andSortOrderIsNull(){addCriterion("SORT_ORDER is null");return (Criteria)this;}public Criteria andSortOrderIsNotNull(){addCriterion("SORT_ORDER is not null");return (Criteria)this;}public Criteria andSortOrderEqualTo(Integer value){addCriterion("SORT_ORDER =",value,"sortOrder");return (Criteria)this;}public Criteria andSortOrderNotEqualTo(Integer value){addCriterion("SORT_ORDER <>",value,"sortOrder");return (Criteria)this;}public Criteria andSortOrderGreaterThan(Integer value){addCriterion("SORT_ORDER >",value,"sortOrder");return (Criteria)this;}public Criteria andSortOrderGreaterThanOrEqualTo(Integer value){addCriterion("SORT_ORDER >=",value,"sortOrder");return (Criteria)this;}public Criteria andSortOrderLessThan(Integer value){addCriterion("SORT_ORDER <",value,"sortOrder");return (Criteria)this;}public Criteria andSortOrderLessThanOrEqualTo(Integer value){addCriterion("SORT_ORDER <=",value,"sortOrder");return (Criteria)this;}public Criteria andSortOrderIn(List<Integer> values){addCriterion("SORT_ORDER in",values,"sortOrder");return (Criteria)this;}public Criteria andSortOrderNotIn(List<Integer> values){addCriterion("SORT_ORDER not in",values,"sortOrder");return (Criteria)this;}public Criteria andSortOrderBetween(Integer value1,Integer value2){addCriterion("SORT_ORDER between",value1,value2,"sortOrder");return (Criteria)this;}public Criteria andSortOrderNotBetween(Integer value1,Integer value2){addCriterion("SORT_ORDER not between",value1,value2,"sortOrder");return (Criteria)this;}public Criteria andUseYnIsNull(){addCriterion("USE_YN is null");return (Criteria)this;}public Criteria andUseYnIsNotNull(){addCriterion("USE_YN is not null");return (Criteria)this;}public Criteria andUseYnEqualTo(String value){addCriterion("USE_YN =",value,"useYn");return (Criteria)this;}public Criteria andUseYnNotEqualTo(String value){addCriterion("USE_YN <>",value,"useYn");return (Criteria)this;}public Criteria andUseYnGreaterThan(String value){addCriterion("USE_YN >",value,"useYn");return (Criteria)this;}public Criteria andUseYnGreaterThanOrEqualTo(String value){addCriterion("USE_YN >=",value,"useYn");return (Criteria)this;}public Criteria andUseYnLessThan(String value){addCriterion("USE_YN <",value,"useYn");return (Criteria)this;}public Criteria andUseYnLessThanOrEqualTo(String value){addCriterion("USE_YN <=",value,"useYn");return (Criteria)this;}public Criteria andUseYnLike(String value){addCriterion("USE_YN like",value,"useYn");return (Criteria)this;}public Criteria andUseYnNotLike(String value){addCriterion("USE_YN not like",value,"useYn");return (Criteria)this;}public Criteria andUseYnIn(List<String> values){addCriterion("USE_YN in",values,"useYn");return (Criteria)this;}public Criteria andUseYnNotIn(List<String> values){addCriterion("USE_YN not in",values,"useYn");return (Criteria)this;}public Criteria andUseYnBetween(String value1,String value2){addCriterion("USE_YN between",value1,value2,"useYn");return (Criteria)this;}public Criteria andUseYnNotBetween(String value1,String value2){addCriterion("USE_YN not between",value1,value2,"useYn");return (Criteria)this;}public Criteria andUpdtDtIsNull(){addCriterion("UPDT_DT is null");return (Criteria)this;}public Criteria andUpdtDtIsNotNull(){addCriterion("UPDT_DT is not null");return (Criteria)this;}public Criteria andUpdtDtEqualTo(String value){addCriterion("UPDT_DT =",value,"updtDt");return (Criteria)this;}public Criteria andUpdtDtNotEqualTo(String value){addCriterion("UPDT_DT <>",value,"updtDt");return (Criteria)this;}public Criteria andUpdtDtGreaterThan(String value){addCriterion("UPDT_DT >",value,"updtDt");return (Criteria)this;}public Criteria andUpdtDtGreaterThanOrEqualTo(String value){addCriterion("UPDT_DT >=",value,"updtDt");return (Criteria)this;}public Criteria andUpdtDtLessThan(String value){addCriterion("UPDT_DT <",value,"updtDt");return (Criteria)this;}public Criteria andUpdtDtLessThanOrEqualTo(String value){addCriterion("UPDT_DT <=",value,"updtDt");return (Criteria)this;}public Criteria andUpdtDtLike(String value){addCriterion("UPDT_DT like",value,"updtDt");return (Criteria)this;}public Criteria andUpdtDtNotLike(String value){addCriterion("UPDT_DT not like",value,"updtDt");return (Criteria)this;}public Criteria andUpdtDtIn(List<String> values){addCriterion("UPDT_DT in",values,"updtDt");return (Criteria)this;}public Criteria andUpdtDtNotIn(List<String> values){addCriterion("UPDT_DT not in",values,"updtDt");return (Criteria)this;}public Criteria andUpdtDtBetween(String value1,String value2){addCriterion("UPDT_DT between",value1,value2,"updtDt");return (Criteria)this;}public Criteria andUpdtDtNotBetween(String value1,String value2){addCriterion("UPDT_DT not between",value1,value2,"updtDt");return (Criteria)this;}public Criteria andUpdusrSnIsNull(){addCriterion("UPDUSR_SN is null");return (Criteria)this;}public Criteria andUpdusrSnIsNotNull(){addCriterion("UPDUSR_SN is not null");return (Criteria)this;}public Criteria andUpdusrSnEqualTo(Integer value){addCriterion("UPDUSR_SN =",value,"updusrSn");return (Criteria)this;}public Criteria andUpdusrSnNotEqualTo(Integer value){addCriterion("UPDUSR_SN <>",value,"updusrSn");return (Criteria)this;}public Criteria andUpdusrSnGreaterThan(Integer value){addCriterion("UPDUSR_SN >",value,"updusrSn");return (Criteria)this;}public Criteria andUpdusrSnGreaterThanOrEqualTo(Integer value){addCriterion("UPDUSR_SN >=",value,"updusrSn");return (Criteria)this;}public Criteria andUpdusrSnLessThan(Integer value){addCriterion("UPDUSR_SN <",value,"updusrSn");return (Criteria)this;}public Criteria andUpdusrSnLessThanOrEqualTo(Integer value){addCriterion("UPDUSR_SN <=",value,"updusrSn");return (Criteria)this;}public Criteria andUpdusrSnIn(List<Integer> values){addCriterion("UPDUSR_SN in",values,"updusrSn");return (Criteria)this;}public Criteria andUpdusrSnNotIn(List<Integer> values){addCriterion("UPDUSR_SN not in",values,"updusrSn");return (Criteria)this;}public Criteria andUpdusrSnBetween(Integer value1,Integer value2){addCriterion("UPDUSR_SN between",value1,value2,"updusrSn");return (Criteria)this;}public Criteria andUpdusrSnNotBetween(Integer value1,Integer value2){addCriterion("UPDUSR_SN not between",value1,value2,"updusrSn");return (Criteria)this;}}

	/**
	 * This class was generated by MyBatis Generator. This class corresponds to the database table is_menu
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */public static class Criterion {private String condition;private Object value;private Object secondValue;private boolean noValue;private boolean singleValue;private boolean betweenValue;private boolean listValue;private String typeHandler;public String getCondition(){return condition;}public Object getValue(){return value;}public Object getSecondValue(){return secondValue;}public boolean isNoValue(){return noValue;}public boolean isSingleValue(){return singleValue;}public boolean isBetweenValue(){return betweenValue;}public boolean isListValue(){return listValue;}public String getTypeHandler(){return typeHandler;}protected Criterion(String condition){super();this.condition=condition;this.typeHandler=null;this.noValue=true;}protected Criterion(String condition,Object value,String typeHandler){super();this.condition=condition;this.value=value;this.typeHandler=typeHandler;if (value instanceof List<?>){this.listValue=true;} else {this.singleValue=true;}}protected Criterion(String condition,Object value){this(condition,value,null);}protected Criterion(String condition,Object value,Object secondValue,String typeHandler){super();this.condition=condition;this.value=value;this.secondValue=secondValue;this.typeHandler=typeHandler;this.betweenValue=true;}protected Criterion(String condition,Object value,Object secondValue){this(condition,value,secondValue,null);}}

	/**
     * This class was generated by MyBatis Generator.
     * This class corresponds to the database table is_menu
     *
     * @mbg.generated do_not_delete_during_merge Tue Sep 19 01:36:15 KST 2017
     */
    public static class Criteria extends GeneratedCriteria {

        protected Criteria() {
            super();
        }
    }
}