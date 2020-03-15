package com.wutong.react.service.user;
import com.wutong.react.domain.user.User;
import com.wutong.react.mapper.user.UserMapper;
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
 * @title  UserService
 * @author zhao_qg
 * @date   20200313 09:19:51
 */
 @Service
public class UserService {

	private static final Logger LOGGER = LoggerFactory.getLogger(UserService.class);
	
	@Autowired
	private UserMapper userMapper;

	/**
	 * 根据条件查询
	 * @author zhao_qg
 	 * @date   20200313 09:19:51
	 * @param map
	 * @return
	 */
	public List<Map<String, Object>> findByCondition(Map<String,Object> map) {
		return  userMapper.findByCondition(map);
	}
	/**
	 * 根据条件查询总数
	 * @author zhao_qg
 	 * @date   20200313 09:19:51
	 * @param map
	 * @return
	 */
	public int findByConditionCount(Map<String,Object> map) {
		return  userMapper.findByConditionCount(map);
	}
	/**
	 * 根据主键查询详细
	 * @author zhao_qg
 	 * @date   20200313 09:19:51
	 * @param paramVo
	 * @return
	 */
	public User getByKey(User paramVo) {
		return  userMapper.getByKey(paramVo);
	}

	/**
	 * 更新
	 * @author zhao_qg
 	 * @date   20200313 09:19:51
	 * @param user
	 * @return
	 */
	public int update(User user) {
            user.setUteUserNo(LoginUtils.getLoginName());
                user.setUteDt(DateUtil.getDate());
		return  userMapper.update(user);
	}
	/**
	 * 插入
	 * @author zhao_qg
 	 * @date   20200313 09:19:51
	 * @param user
	 * @return
	 */
	public int insert(User user) {
            user.setCteUserNo(LoginUtils.getLoginName());
                user.setCteDt(DateUtil.getDate());
		return  userMapper.insert(user);
	}
	/**
	 * 根据主键删除
	 * @author zhao_qg
 	 * @date   20200313 09:19:51
	 * @param map
	 * @return
	 */
	public int delete(Map<String,Object> map) {
		return  userMapper.delete(map);
	}
}