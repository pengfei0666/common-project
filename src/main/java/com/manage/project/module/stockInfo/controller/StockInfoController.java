package com.manage.project.module.stockInfo.controller;

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
import com.manage.project.module.stockInfo.domain.StockInfo;
import com.manage.project.module.stockInfo.service.IStockInfoService;
import com.manage.framework.web.controller.BaseController;
import com.manage.framework.web.page.TableDataInfo;
import com.manage.framework.web.domain.AjaxResult;

/**
 * 库存 信息操作处理
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Controller
@RequestMapping("/module/stockInfo")
public class StockInfoController extends BaseController
{
    private String prefix = "module/stockInfo";
	
	@Autowired
	private IStockInfoService stockInfoService;
	
	@RequiresPermissions("module:stockInfo:view")
	@GetMapping()
	public String stockInfo()
	{
	    return prefix + "/stockInfo";
	}
	
	/**
	 * 查询库存列表
	 */
	@RequiresPermissions("module:stockInfo:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(StockInfo stockInfo)
	{
		startPage();
        List<StockInfo> list = stockInfoService.selectStockInfoList(stockInfo);
		return getDataTable(list);
	}
	
	/**
	 * 新增库存
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存库存
	 */
	@RequiresPermissions("module:stockInfo:add")
	@Log(title = "库存", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(StockInfo stockInfo)
	{		
		return toAjax(stockInfoService.insertStockInfo(stockInfo));
	}

	/**
	 * 修改库存
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		StockInfo stockInfo = stockInfoService.selectStockInfoById(id);
		mmap.put("stockInfo", stockInfo);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存库存
	 */
	@RequiresPermissions("module:stockInfo:edit")
	@Log(title = "库存", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(StockInfo stockInfo)
	{		
		return toAjax(stockInfoService.updateStockInfo(stockInfo));
	}
	
	/**
	 * 删除库存
	 */
	@RequiresPermissions("module:stockInfo:remove")
	@Log(title = "库存", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(stockInfoService.deleteStockInfoByIds(ids));
	}
	
}
