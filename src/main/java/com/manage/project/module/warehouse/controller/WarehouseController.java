package com.manage.project.module.warehouse.controller;

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
import com.manage.project.module.warehouse.domain.Warehouse;
import com.manage.project.module.warehouse.service.IWarehouseService;
import com.manage.framework.web.controller.BaseController;
import com.manage.framework.web.page.TableDataInfo;
import com.manage.framework.web.domain.AjaxResult;

/**
 * 仓库 信息操作处理
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Controller
@RequestMapping("/module/warehouse")
public class WarehouseController extends BaseController
{
    private String prefix = "module/warehouse";
	
	@Autowired
	private IWarehouseService warehouseService;
	
	@RequiresPermissions("module:warehouse:view")
	@GetMapping()
	public String warehouse()
	{
	    return prefix + "/warehouse";
	}
	
	/**
	 * 查询仓库列表
	 */
	@RequiresPermissions("module:warehouse:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Warehouse warehouse)
	{
		startPage();
        List<Warehouse> list = warehouseService.selectWarehouseList(warehouse);
		return getDataTable(list);
	}
	
	/**
	 * 新增仓库
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存仓库
	 */
	@RequiresPermissions("module:warehouse:add")
	@Log(title = "仓库", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Warehouse warehouse)
	{		
		return toAjax(warehouseService.insertWarehouse(warehouse));
	}

	/**
	 * 修改仓库
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Warehouse warehouse = warehouseService.selectWarehouseById(id);
		mmap.put("warehouse", warehouse);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存仓库
	 */
	@RequiresPermissions("module:warehouse:edit")
	@Log(title = "仓库", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Warehouse warehouse)
	{		
		return toAjax(warehouseService.updateWarehouse(warehouse));
	}
	
	/**
	 * 删除仓库
	 */
	@RequiresPermissions("module:warehouse:remove")
	@Log(title = "仓库", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(warehouseService.deleteWarehouseByIds(ids));
	}
	
}
