package com.manage.project.module.orderInfo.mapper;

import com.manage.project.module.orderInfo.domain.OrderInfo;
import java.util.List;	

/**
 * 出货订单 数据层
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public interface OrderInfoMapper 
{
	/**
     * 查询出货订单信息
     * 
     * @param id 出货订单ID
     * @return 出货订单信息
     */
	public OrderInfo selectOrderInfoById(Integer id);
	
	/**
     * 查询出货订单列表
     * 
     * @param orderInfo 出货订单信息
     * @return 出货订单集合
     */
	public List<OrderInfo> selectOrderInfoList(OrderInfo orderInfo);
	
	/**
     * 新增出货订单
     * 
     * @param orderInfo 出货订单信息
     * @return 结果
     */
	public int insertOrderInfo(OrderInfo orderInfo);
	
	/**
     * 修改出货订单
     * 
     * @param orderInfo 出货订单信息
     * @return 结果
     */
	public int updateOrderInfo(OrderInfo orderInfo);
	
	/**
     * 删除出货订单
     * 
     * @param id 出货订单ID
     * @return 结果
     */
	public int deleteOrderInfoById(Integer id);
	
	/**
     * 批量删除出货订单
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteOrderInfoByIds(String[] ids);
	
}