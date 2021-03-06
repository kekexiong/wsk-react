package ${controllerPackage};
import java.util.*;
import ${domainPackage}.${classNameD};
import ${servicePackage}.${classNameD}Service;
import javax.servlet.http.HttpSession;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import ${classPackage}.util.*;
import ${classPackage}.controller.BaseController;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.apache.poi.xssf.streaming.SXSSFWorkbook;
import ${classPackage}.domain.ImportError;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.File;

/**
 * @description  ${businessName}控制层
 * @author ${classAuthor}
 * @date   ${classTime}
 */
@Controller
@RequestMapping("/${busPackage}/${classNameX}")
public class ${classNameD}Controller extends BaseController {

    @Autowired
    private ${classNameD}Service ${classNameX}Service;
    static final Logger LOGGER = LoggerFactory.getLogger(${classNameD}Controller.class);
<#list tableCarrays as tableCarray>
    <#if (tableCarray.queryRule??) && tableCarray.queryRule == "05">
    /**
     * @description: 获取自定义下拉选数据
     * @return map
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value ="/get${tableCarray.columnNameD}", method = RequestMethod.GET)
    @ResponseBody
    public List<Map<String, Object>> get${tableCarray.columnNameD}(){
        String opNm = "${businessName}-获取字段";
        LOGGER.info(opNm, "--begin");
        List<Map<String, Object>> payTypeNames = null;
        try {
            //payTypeNames = tSesAutoPayCheckService.get${tableCarray.columnNameD}();
            LOGGER.info(opNm, "--获取参数成功！");
        } catch (Exception e) {
            LOGGER.error(opNm, "--end,异常",e);
        }
        LOGGER.info(opNm,"--end");
        return payTypeNames;
    }
    </#if>
</#list>
<#if isQuery == "01">
    
    /**
     * @description: 信息查询
     * @param session
     * @param start
     * @param limit
     * @param paramVo
     * @return map
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value ="/query", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> queryCondition(HttpSession session,
            @RequestParam(value = "start", defaultValue = START) int start,
            @RequestParam(value = "limit", defaultValue = LIMIT) int limit,
            @ModelAttribute ${classNameD} paramVo) {
        String opNm = "${businessName}-查询";
            try {
                LOGGER.info(opNm, paramVo.toString(), "--begin");
                Map<String, Object> map = setParams(start, limit);
                map.put("${classNameX}", paramVo);
                session.setAttribute("query${classNameD}Param", map);
                List<Map<String, Object>> list = ${classNameX}Service.findByCondition(map);
                int count = ${classNameX}Service.findByConditionCount(map);
                LOGGER.info(opNm, count, "--end");
                return setResult(list, count);
            } catch (Exception e) {
                LOGGER.info(opNm, "--end,异常", e);
                return setFailure("查询失败");
            }
    }
</#if>
<#if isQuery == "01">
    
    /**
     * 根据主键取得详细
     * @param session
     * @param paramVo
     * @return map
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value = "/getDetail", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> getByKey(HttpSession session, @ModelAttribute ${classNameD} paramVo) {
        String opNm = "${businessName}-详细";
            try {
                LOGGER.info(opNm, paramVo.toString(), "--begin");
    ${classNameD} detail= ${classNameX}Service.getByKey(paramVo);
                LOGGER.info(opNm,"--end");
                Map<String, Object> map = new HashMap<String, Object>();
                map.put("data", detail);
                return map;
            } catch (Exception e) {
                LOGGER.error(opNm,"--end,异常",e);
                return super.setFailure("查询失败");
            }
    }
</#if>
<#if isAdd == "01">
    
    /**
     * 保存
     * @param ${classNameX}
     * @return map
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value = "/save", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> save( @ModelAttribute ${classNameD} ${classNameX}) {
        String opNm = "${businessName}-保存";
        try{
            LOGGER.info(opNm, ${classNameX}.toString(), "--begin");
    <#list insertCarrays as tableCarray>
        <#if tableCarray.columnNameD == "Uuid">
            ${classNameX}.set${tableCarray.columnNameD}(UuidUtil.getUUID());
        </#if>
        <#if tableCarray.columnNameD == "OpId">
            ${classNameX}.set${tableCarray.columnNameD}(SysUtils.getLoginName());
        </#if>
        <#if tableCarray.columnNameD == "OpDt">
            ${classNameX}.set${tableCarray.columnNameD}(DateUtils.getCurDT());
        </#if>
        <#if tableCarray.columnNameD == "OpTm">
            ${classNameX}.set${tableCarray.columnNameD}(DateUtils.getCurTM());
        </#if>
        <#if tableCarray.columnNameD == "CtId">
            ${classNameX}.set${tableCarray.columnNameD}(SysUtils.getLoginName());
        </#if>
        <#if tableCarray.columnNameD == "CtDt">
            ${classNameX}.set${tableCarray.columnNameD}(DateUtils.getCurDT());
        </#if>
        <#if tableCarray.columnNameD == "CtTm">
            ${classNameX}.set${tableCarray.columnNameD}(DateUtils.getCurTM());
        </#if>
    </#list>
            int num = ${classNameX}Service.insert(${classNameX});
            if(num>0){
                return super.setSuccess("保存成功!");
            }
            LOGGER.info(opNm, "--end");
            return super.setFailure("保存成功0条!");
            
        }catch(Exception e){
            LOGGER.error(opNm, "--end,异常", e);
            return super.setFailure("保存失败!");
        }
    }
</#if>
<#if isUpdate=="01">
    
    /**
     * 更新
     * @param ${classNameX}
     * @return map
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value = "/update", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> udpate( @ModelAttribute ${classNameD} ${classNameX}) {
        String opNm = "${businessName}-更新";
        try{
    <#list updateCarrays as tableCarray>
        <#if tableCarray.columnNameD == "OpId">
                paramVo.set${tableCarray.columnNameD}(LoginUtils.getLoginName());
        </#if>
        <#if tableCarray.columnNameD == "OpDt">
                paramVo.set${tableCarray.columnNameD}(DateUtils.getCurDT());
        </#if>
        <#if tableCarray.columnNameD == "OpTm">
                paramVo.set${tableCarray.columnNameD}(DateUtils.getCurTM());
        </#if>
    </#list>
            LOGGER.info(opNm, ${classNameX}.toString(), "--begin");
            int num = ${classNameX}Service.update(${classNameX});
            if(num>0){
                return super.setSuccess("更新成功!");
            }
            LOGGER.info(opNm, "--end");
            return super.setFailure("更新成功0条!");
        }catch(Exception e){
            LOGGER.error(opNm, "--end,异常", e);
            return super.setFailure("更新失败!");
        }
    }
</#if>
<#if isDetele=="01">

    /**
     * 根据主键删除
     * @param session
     * @param keys
     * @return map
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value = "/deleteByKey", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> deleteByKey(HttpSession session, @RequestParam(value = "keys") String keys) {
        String opNm = "${businessName}-删除";
        if(keys==null|| "".equals(keys)){
            return super.setFailure("错误：主键参数为空");
        }
        // 参数map
        Map<String, Object> paramsMap = new HashMap<String, Object>();
        paramsMap.put("keys", keys.split(","));//主键组
        try{
            LOGGER.info(opNm, keys, "--begin");
            int num = ${classNameX}Service.delete(paramsMap);
            LOGGER.info(opNm, num, "--end");
            if(num>0){
                return super.setSuccess("删除成功!");
            }
            LOGGER.info(opNm, "--end");
            return super.setFailure("删除成功0条!");
            
        }catch(Exception e){
            LOGGER.error(opNm, "--end,异常", e);
            return super.setFailure("删除失败!");
        }
    }
</#if>
<#if isImport == "01" >
    
    /**
     * @description:下载导入模板
     * @param request
     * @param response
     * @return map
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value = "/downloadTemplate")
    public void downloadBatchTemplate(HttpServletRequest request, HttpServletResponse response) {
        String opNm = "${businessName}-下载导入模板";
        LOGGER.info(opNm, "==开始");
        String    fileName = "${classNameX}Template.xlsx";
        try {
            LOGGER.info(opNm, fileName, "begin");
            String path = ${classNameD}Controller.class.getResource("/").getPath()+ "/template/" + fileName;
            File file = new File(path);
            DownloadFileUtil.getInstance().downLoad(file, response);
            LOGGER.info(opNm, fileName, "end");
        } catch (Exception e) {
            LOGGER.error(opNm, fileName, e);
        }
    }
    
    /**
     * @description:主页面导入功能
     * @param session
     * @param request
     * @return map
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value = "importExcel", method = RequestMethod.POST)
    @ResponseBody
    public Map<String, Object> ${classNameD}importExcel (HttpSession session, HttpServletRequest request){
        String opNm = "${businessName}-导入";
         LOGGER.info(opNm, "==开始");
        Map<String, Object> rsMap = null;
        try {
            rsMap = ${classNameX}Service.batchOperate(request);
            session.setAttribute("${classNameX}+Errlist", rsMap.get("errorList"));
            return rsMap;
        } catch (Exception e) {
            LOGGER.error(opNm, "异常原因是：", e);
            rsMap = new HashMap<String, Object>();
            rsMap.put("success", false);
            rsMap.put("msgInfo", "系统异常！");
            return rsMap;
        }
    }
    
    /**
     * @description:导出错误信息
     * @param session
     * @param response
     * @return void
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value = "getFailExport", method = RequestMethod.GET)
    @ResponseBody
    public void getBnkBinFailExport(HttpSession session, HttpServletResponse response) {
        try{
            //从session中获取错误信息list
            @SuppressWarnings("unchecked")
            List<ImportError> erroList = (List<ImportError>) session.getAttribute("${classNameX}+Errlist");
            List<Map<String, Object>> inList = null;
            if(erroList.size()>0){inList = new ArrayList<Map<String, Object>>();
                for (int i = 0; i < erroList.size(); i++) {
                    Map<String, Object> map = new HashMap<String, Object>();
                    ImportError po = erroList.get(i);
                    map.put("position", po.getPosition());
                    map.put("importValue", po.getImportValue());
                    map.put("failCode", po.getFailCode());
                    map.put("failReason", po.getFailReason());
                    inList.add(map);
                }
                String fileName = "导入错误信息-" + DateUtil.getCurDTTM() + ".xlsx";
                SXSSFWorkbook swb = ${classNameX}Service.exportExcelFail(inList, LoginUtils.getLoginName());
                DownloadFileUtil.getInstance().downLoadExcel(swb, fileName, response);
            }
        } catch (Exception e){
            LOGGER.error("验证失败结果导出异常，", e);
        }
    }
</#if>
<#if isExport == "01" >
    
    /**
     * @description:主页面导出功能
     * @param session
     * @param response
     * @return void
     * @author ${classAuthor}
     * @date ${classTime}
     */
    @RequestMapping(value = "/export", method = RequestMethod.GET)
    public void export(HttpSession session, HttpServletResponse response) {
        String opNm = "${businessName}信息管理-导出";
        String fileName = "${businessName}" + DateUtil.getCurDTTM() + ".xlsx";
        Map<String, Object> paraMap = (Map<String, Object>) session.getAttribute("query${classNameD}Param");
        long startTime = System.currentTimeMillis();
        Map<String, Object> paramsMap = (Map<String, Object>) session.getAttribute("queryParams");
        try {
            SXSSFWorkbook swb = ${classNameX}Service.export(paraMap);
            DownloadFileUtil.getInstance().downLoadExcel(swb, fileName, response);
            LOGGER.info("导出收支明细--end" + DateUtil.getHaoShiTimeMsg(startTime));
        } catch (Exception e) {
            LOGGER.error("导出收支明细--exception", e);
        }
        LOGGER.info(opNm, "导出完毕", "fileName=" + fileName);
    }
</#if>
}