package com.manage.project.module.clientInfo.controller;

import com.manage.framework.aspectj.lang.annotation.Log;
import com.manage.framework.aspectj.lang.enums.BusinessType;
import com.manage.framework.web.controller.BaseController;
import com.manage.framework.web.domain.AjaxResult;
import com.manage.framework.web.page.TableDataInfo;
import com.manage.project.module.clientInfo.domain.ClientInfo;
import com.manage.project.module.clientInfo.service.IClientInfoService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;


/**
 * 客户 信息操作处理
 * 
 * @author PengFei
 * @date 2018-10-19
 */
@Controller
@RequestMapping("/module/clientInfo")
public class ClientInfoController extends BaseController
{
    private String prefix = "module/clientInfo";
	
	@Autowired
	private IClientInfoService clientInfoService;
	
	@RequiresPermissions("module:clientInfo:view")
	@GetMapping()
	public String clientInfo()
	{
	    return prefix + "/clientInfo";
	}
	
	/**
	 * 查询客户列表
	 */
	@RequiresPermissions("module:clientInfo:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(ClientInfo clientInfo)
	{
		startPage();
        List<ClientInfo> list = clientInfoService.selectClientInfoList(clientInfo);
		return getDataTable(list);
	}
	
	/**
	 * 新增客户
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存客户
	 */
	@RequiresPermissions("module:clientInfo:add")
	@Log(title = "客户", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(ClientInfo clientInfo)
	{		
		return toAjax(clientInfoService.insertClientInfo(clientInfo));
	}

	/**
	 * 修改客户
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") String id, ModelMap mmap)
	{
		ClientInfo clientInfo = clientInfoService.selectClientInfoById(id);
		mmap.put("clientInfo", clientInfo);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存客户
	 */
	@RequiresPermissions("module:clientInfo:edit")
	@Log(title = "客户", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(ClientInfo clientInfo)
	{		
		return toAjax(clientInfoService.updateClientInfo(clientInfo));
	}
	
	/**
	 * 删除客户
	 */
	@RequiresPermissions("module:clientInfo:remove")
	@Log(title = "客户", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(clientInfoService.deleteClientInfoByIds(ids));
	}
	
}
