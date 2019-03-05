package com.manage.project.module.factory.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.manage.framework.aspectj.lang.annotation.Log;
import com.manage.framework.aspectj.lang.enums.BusinessType;
import com.manage.project.module.factory.domain.Factory;
import com.manage.project.module.factory.service.IFactoryService;
import com.manage.framework.web.controller.BaseController;
import com.manage.framework.web.page.TableDataInfo;
import com.manage.framework.web.domain.AjaxResult;

/**
 * 厂家 信息操作处理
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Controller
@RequestMapping("/module/factory")
public class FactoryController extends BaseController
{
    private String prefix = "module/factory";
	
	@Autowired
	private IFactoryService factoryService;
	
	@RequiresPermissions("module:factory:view")
	@GetMapping()
	public String factory()
	{
	    return prefix + "/factory";
	}
	
	/**
	 * 查询厂家列表
	 */
	@RequiresPermissions("module:factory:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Factory factory)
	{
		startPage();
        List<Factory> list = factoryService.selectFactoryList(factory);
		return getDataTable(list);
	}
	
	/**
	 * 新增厂家
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存厂家
	 */
	@RequiresPermissions("module:factory:add")
	@Log(title = "厂家", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Factory factory)
	{		
		return toAjax(factoryService.insertFactory(factory));
	}

	/**
	 * 修改厂家
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Factory factory = factoryService.selectFactoryById(id);
		mmap.put("factory", factory);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存厂家
	 */
	@RequiresPermissions("module:factory:edit")
	@Log(title = "厂家", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Factory factory)
	{		
		return toAjax(factoryService.updateFactory(factory));
	}
	
	/**
	 * 删除厂家
	 */
	@RequiresPermissions("module:factory:remove")
	@Log(title = "厂家", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(factoryService.deleteFactoryByIds(ids));
	}
	
}
