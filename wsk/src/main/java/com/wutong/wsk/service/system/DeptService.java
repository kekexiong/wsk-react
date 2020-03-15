package com.wutong.wsk.service.system;
import java.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.wutong.wsk.domain.system.Dept;
import com.wutong.wsk.mapper.system.DeptMapper;
import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import com.wutong.wsk.domain.ImportError;
import com.wutong.wsk.util.ExcelUtils;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import com.wutong.wsk.util.UuidUtil;
import com.google.common.collect.Lists;
import com.wutong.wsk.util.DateUtil;
import com.wutong.wsk.util.LoginUtils;
import java.io.File;
import java.io.InputStream;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;


/**
 * @title  DeptService
 * @author zhao_qg
 * @date   20200220 21:16:42
 */
 @Service
public class DeptService {

	private static final Logger LOGGER = LoggerFactory.getLogger(DeptService.class);
	
	@Autowired
	private DeptMapper deptMapper;

	/**
	 * 根据条件查询
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param map
	 * @return
	 */
	public List<Map<String, Object>> findByCondition(Map<String,Object> map) {
		return  deptMapper.findByCondition(map);
	}
	/**
	 * 根据条件查询总数
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param map
	 * @return
	 */
	public int findByConditionCount(Map<String,Object> map) {
		return  deptMapper.findByConditionCount(map);
	}
	/**
	 * 根据主键查询详细
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param paramVo
	 * @return
	 */
	public Dept getByKey(Dept paramVo) {
		return  deptMapper.getByKey(paramVo);
	}

	/**
	 * 更新
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param dept
	 * @return
	 */
	public int update(Dept dept) {
		return  deptMapper.update(dept);
	}
	/**
	 * 插入
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param dept
	 * @return
	 */
	public int insert(Dept dept) {
		return  deptMapper.insert(dept);
	}
	/**
	 * 根据主键删除
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param map
	 * @return
	 */
	public int delete(Map<String,Object> map) {
		return  deptMapper.delete(map);
	}
}