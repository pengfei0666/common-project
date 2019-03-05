package com.manage.project.module.orderDetail.mapper;

import com.manage.project.module.orderDetail.domain.OrderDetail;
import java.util.List;	

/**
 * 订单详情 数据层
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public interface OrderDetailMapper 
{
	/**
     * 查询订单详情信息
     * 
     * @param id 订单详情ID
     * @return 订单详情信息
     */
	public OrderDetail selectOrderDetailById(Integer id);
	
	/**
     * 查询订单详情列表
     * 
     * @param orderDetail 订单详情信息
     * @return 订单详情集合
     */
	public List<OrderDetail> selectOrderDetailList(OrderDetail orderDetail);
	
	/**
     * 新增订单详情
     * 
     * @param orderDetail 订单详情信息
     * @return 结果
     */
	public int insertOrderDetail(OrderDetail orderDetail);
	
	/**
     * 修改订单详情
     * 
     * @param orderDetail 订单详情信息
     * @return 结果
     */
	public int updateOrderDetail(OrderDetail orderDetail);
	
	/**
     * 删除订单详情
     * 
     * @param id 订单详情ID
     * @return 结果
     */
	public int deleteOrderDetailById(Integer id);
	
	/**
     * 批量删除订单详情
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteOrderDetailByIds(String[] ids);
	
}