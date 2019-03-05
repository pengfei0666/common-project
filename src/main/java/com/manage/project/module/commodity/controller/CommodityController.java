package com.manage.project.module.commodity.controller;

import com.manage.framework.aspectj.lang.annotation.Log;
import com.manage.framework.aspectj.lang.enums.BusinessType;
import com.manage.framework.web.controller.BaseController;
import com.manage.framework.web.domain.AjaxResult;
import com.manage.framework.web.page.TableDataInfo;
import com.manage.project.module.commodity.domain.Commodity;
import com.manage.project.module.commodity.service.ICommodityService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.*;

import java.util.List;

/**
 * 产品 信息操作处理
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Controller
@RequestMapping("/module/commodity")
public class CommodityController extends BaseController
{
    private String prefix = "module/commodity";
	
	@Autowired
	private ICommodityService commodityService;
	
	@RequiresPermissions("module:commodity:view")
	@GetMapping()
	public String commodity()
	{
	    return prefix + "/commodity";
	}
	
	/**
	 * 查询产品列表
	 */
	@RequiresPermissions("module:commodity:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Commodity commodity)
	{
		startPage();
        List<Commodity> list = commodityService.selectCommodityList(commodity);
		return getDataTable(list);
	}
	
	/**
	 * 新增产品
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存产品
	 */
	@RequiresPermissions("module:commodity:add")
	@Log(title = "产品", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Commodity commodity)
	{		
		return toAjax(commodityService.insertCommodity(commodity));
	}

	/**
	 * 修改产品
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Commodity commodity = commodityService.selectCommodityById(id);
		mmap.put("commodity", commodity);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存产品
	 */
	@RequiresPermissions("module:commodity:edit")
	@Log(title = "产品", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Commodity commodity)
	{		
		return toAjax(commodityService.updateCommodity(commodity));
	}
	
	/**
	 * 删除产品
	 */
	@RequiresPermissions("module:commodity:remove")
	@Log(title = "产品", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(commodityService.deleteCommodityByIds(ids));
	}
	
}
