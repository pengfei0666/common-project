package com.manage.project.module.orderDetail.controller;

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
import com.manage.project.module.orderDetail.domain.OrderDetail;
import com.manage.project.module.orderDetail.service.IOrderDetailService;
import com.manage.framework.web.controller.BaseController;
import com.manage.framework.web.page.TableDataInfo;
import com.manage.framework.web.domain.AjaxResult;

/**
 * 订单详情 信息操作处理
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Controller
@RequestMapping("/module/orderDetail")
public class OrderDetailController extends BaseController
{
    private String prefix = "module/orderDetail";
	
	@Autowired
	private IOrderDetailService orderDetailService;
	
	@RequiresPermissions("module:orderDetail:view")
	@GetMapping()
	public String orderDetail()
	{
	    return prefix + "/orderDetail";
	}
	
	/**
	 * 查询订单详情列表
	 */
	@RequiresPermissions("module:orderDetail:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(OrderDetail orderDetail)
	{
		startPage();
        List<OrderDetail> list = orderDetailService.selectOrderDetailList(orderDetail);
		return getDataTable(list);
	}
	
	/**
	 * 新增订单详情
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存订单详情
	 */
	@RequiresPermissions("module:orderDetail:add")
	@Log(title = "订单详情", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(OrderDetail orderDetail)
	{		
		return toAjax(orderDetailService.insertOrderDetail(orderDetail));
	}

	/**
	 * 修改订单详情
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		OrderDetail orderDetail = orderDetailService.selectOrderDetailById(id);
		mmap.put("orderDetail", orderDetail);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存订单详情
	 */
	@RequiresPermissions("module:orderDetail:edit")
	@Log(title = "订单详情", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(OrderDetail orderDetail)
	{		
		return toAjax(orderDetailService.updateOrderDetail(orderDetail));
	}
	
	/**
	 * 删除订单详情
	 */
	@RequiresPermissions("module:orderDetail:remove")
	@Log(title = "订单详情", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(orderDetailService.deleteOrderDetailByIds(ids));
	}
	
}
