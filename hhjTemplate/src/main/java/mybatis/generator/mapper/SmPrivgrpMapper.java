package mybatis.generator.mapper;

import java.util.List;
import mybatis.generator.model.SmPrivgrp;
import mybatis.generator.model.SmPrivgrpExample;
import org.apache.ibatis.annotations.Param;

public interface SmPrivgrpMapper {

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	long countByExample(SmPrivgrpExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	int deleteByExample(SmPrivgrpExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	int deleteByPrimaryKey(Integer privgrpSn);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	int insert(SmPrivgrp record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	int insertSelective(SmPrivgrp record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */List<SmPrivgrp> selectByExample(SmPrivgrpExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	SmPrivgrp selectByPrimaryKey(Integer privgrpSn);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */int updateByExampleSelective(@Param("record") SmPrivgrp record,@Param("example") SmPrivgrpExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */int updateByExample(@Param("record") SmPrivgrp record,@Param("example") SmPrivgrpExample example);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	int updateByPrimaryKeySelective(SmPrivgrp record);

	/**
	 * This method was generated by MyBatis Generator. This method corresponds to the database table sm_privgrp
	 * @mbg.generated  Tue Nov 28 17:51:43 KST 2017
	 */
	int updateByPrimaryKey(SmPrivgrp record);
}