package com.manage.project.module.orderInfo.controller;

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
import com.manage.project.module.orderInfo.domain.OrderInfo;
import com.manage.project.module.orderInfo.service.IOrderInfoService;
import com.manage.framework.web.controller.BaseController;
import com.manage.framework.web.page.TableDataInfo;
import com.manage.framework.web.domain.AjaxResult;

/**
 * 出货订单 信息操作处理
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Controller
@RequestMapping("/module/orderInfo")
public class OrderInfoController extends BaseController
{
    private String prefix = "module/orderInfo";
	
	@Autowired
	private IOrderInfoService orderInfoService;
	
	@RequiresPermissions("module:orderInfo:view")
	@GetMapping()
	public String orderInfo()
	{
	    return prefix + "/orderInfo";
	}
	
	/**
	 * 查询出货订单列表
	 */
	@RequiresPermissions("module:orderInfo:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(OrderInfo orderInfo)
	{
		startPage();
        List<OrderInfo> list = orderInfoService.selectOrderInfoList(orderInfo);
		return getDataTable(list);
	}
	
	/**
	 * 新增出货订单
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存出货订单
	 */
	@RequiresPermissions("module:orderInfo:add")
	@Log(title = "出货订单", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(OrderInfo orderInfo)
	{		
		return toAjax(orderInfoService.insertOrderInfo(orderInfo));
	}

	/**
	 * 修改出货订单
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		OrderInfo orderInfo = orderInfoService.selectOrderInfoById(id);
		mmap.put("orderInfo", orderInfo);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存出货订单
	 */
	@RequiresPermissions("module:orderInfo:edit")
	@Log(title = "出货订单", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(OrderInfo orderInfo)
	{		
		return toAjax(orderInfoService.updateOrderInfo(orderInfo));
	}
	
	/**
	 * 删除出货订单
	 */
	@RequiresPermissions("module:orderInfo:remove")
	@Log(title = "出货订单", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(orderInfoService.deleteOrderInfoByIds(ids));
	}
	
}
