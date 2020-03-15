package com.wutong.react.service.system;
import com.wutong.react.domain.system.DicCode;
import com.wutong.react.mapper.system.DicCodeMapper;
import com.wutong.react.domain.ImportError;
import com.wutong.react.util.DateUtil;
import com.wutong.react.util.ExcelModle;
import com.wutong.react.util.ExcelUtils;
import com.wutong.react.util.LoginUtils;
import com.wutong.react.util.ObjectUtils;
import com.wutong.react.service.system.DicCodeUtils;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartHttpServletRequest;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 * @title  DicCodeService
 * @author zhao_qg
 * @date   20200313 09:29:51
 */
 @Service
public class DicCodeService {

	private static final Logger LOGGER = LoggerFactory.getLogger(DicCodeService.class);
	
	@Autowired
	private DicCodeMapper dicCodeMapper;

	/**
	 * 根据条件查询
	 * @author zhao_qg
 	 * @date   20200313 09:29:51
	 * @param map
	 * @return
	 */
	public List<Map<String, Object>> findByCondition(Map<String,Object> map) {
		return  dicCodeMapper.findByCondition(map);
	}
	/**
	 * 根据条件查询总数
	 * @author zhao_qg
 	 * @date   20200313 09:29:51
	 * @param map
	 * @return
	 */
	public int findByConditionCount(Map<String,Object> map) {
		return  dicCodeMapper.findByConditionCount(map);
	}
	/**
	 * 根据主键查询详细
	 * @author zhao_qg
 	 * @date   20200313 09:29:51
	 * @param paramVo
	 * @return
	 */
	public DicCode getByKey(DicCode paramVo) {
		return  dicCodeMapper.getByKey(paramVo);
	}

	/**
	 * 更新
	 * @author zhao_qg
 	 * @date   20200313 09:29:51
	 * @param dicCode
	 * @return
	 */
	public int update(DicCode dicCode) {
            dicCode.setUteUserNo(LoginUtils.getLoginName());
                dicCode.setUteDt(DateUtil.getDate());
		return  dicCodeMapper.update(dicCode);
	}
	/**
	 * 插入
	 * @author zhao_qg
 	 * @date   20200313 09:29:51
	 * @param dicCode
	 * @return
	 */
	public int insert(DicCode dicCode) {
            dicCode.setCteUserNo(LoginUtils.getLoginName());
                dicCode.setCteDt(DateUtil.getDate());
		return  dicCodeMapper.insert(dicCode);
	}
	/**
	 * 根据主键删除
	 * @author zhao_qg
 	 * @date   20200313 09:29:51
	 * @param map
	 * @return
	 */
	public int delete(Map<String,Object> map) {
		return  dicCodeMapper.delete(map);
	}
}