package com.wutong.wsk.mapper.system;
import java.util.*;
import java.util.Map;
import com.wutong.wsk.domain.system.Dept;
import com.wutong.wsk.mapper.system.DeptMapper;
import org.springframework.stereotype.Component;

/**
 * @title  DeptMapper
 * @author zhao_qg
 * @date   20200220 21:16:42
 */
@Component
public interface DeptMapper {
	
	/**
	 * 根据条件查询
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param map
	 * @return
	 */
	public List<Map<String, Object>> findByCondition(Map<String,Object> map);
	/**
	 * 根据条件查询总数
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param map
	 * @return
	 */
	public int findByConditionCount(Map<String,Object> map);
	/**
	 * 根据主键查询详细
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param paramVo
	 * @return
	 */
	public Dept getByKey(Dept paramVo); 
	
	/**
	 * 更新
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param dept
	 * @return
	 */
	public int update(Dept dept);
	
	/**
	 * 插入
	 * @author zhao_qg
 	 * @date 20200220 21:16:42
	 * @param dept
	 * @return
	 */	public int insert(Dept dept);
	 
	/**
	 * 根据主键删除
	 * @author zhao_qg
 	 * @date   20200220 21:16:42
	 * @param map
	 * @return
	 */
	public int delete(Map<String,Object> map);

}