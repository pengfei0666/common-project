package com.manage.project.module.orderDetail.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.project.module.orderDetail.mapper.OrderDetailMapper;
import com.manage.project.module.orderDetail.domain.OrderDetail;
import com.manage.project.module.orderDetail.service.IOrderDetailService;
import com.manage.common.support.Convert;

/**
 * 订单详情 服务层实现
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Service
public class OrderDetailServiceImpl implements IOrderDetailService 
{
	@Autowired
	private OrderDetailMapper orderDetailMapper;

	/**
     * 查询订单详情信息
     * 
     * @param id 订单详情ID
     * @return 订单详情信息
     */
    @Override
	public OrderDetail selectOrderDetailById(Integer id)
	{
	    return orderDetailMapper.selectOrderDetailById(id);
	}
	
	/**
     * 查询订单详情列表
     * 
     * @param orderDetail 订单详情信息
     * @return 订单详情集合
     */
	@Override
	public List<OrderDetail> selectOrderDetailList(OrderDetail orderDetail)
	{
	    return orderDetailMapper.selectOrderDetailList(orderDetail);
	}
	
    /**
     * 新增订单详情
     * 
     * @param orderDetail 订单详情信息
     * @return 结果
     */
	@Override
	public int insertOrderDetail(OrderDetail orderDetail)
	{
	    return orderDetailMapper.insertOrderDetail(orderDetail);
	}
	
	/**
     * 修改订单详情
     * 
     * @param orderDetail 订单详情信息
     * @return 结果
     */
	@Override
	public int updateOrderDetail(OrderDetail orderDetail)
	{
	    return orderDetailMapper.updateOrderDetail(orderDetail);
	}

	/**
     * 删除订单详情对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteOrderDetailByIds(String ids)
	{
		return orderDetailMapper.deleteOrderDetailByIds(Convert.toStrArray(ids));
	}
	
}
