package com.manage.project.module.orderInfo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.project.module.orderInfo.mapper.OrderInfoMapper;
import com.manage.project.module.orderInfo.domain.OrderInfo;
import com.manage.project.module.orderInfo.service.IOrderInfoService;
import com.manage.common.support.Convert;

/**
 * 出货订单 服务层实现
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Service
public class OrderInfoServiceImpl implements IOrderInfoService 
{
	@Autowired
	private OrderInfoMapper orderInfoMapper;

	/**
     * 查询出货订单信息
     * 
     * @param id 出货订单ID
     * @return 出货订单信息
     */
    @Override
	public OrderInfo selectOrderInfoById(Integer id)
	{
	    return orderInfoMapper.selectOrderInfoById(id);
	}
	
	/**
     * 查询出货订单列表
     * 
     * @param orderInfo 出货订单信息
     * @return 出货订单集合
     */
	@Override
	public List<OrderInfo> selectOrderInfoList(OrderInfo orderInfo)
	{
	    return orderInfoMapper.selectOrderInfoList(orderInfo);
	}
	
    /**
     * 新增出货订单
     * 
     * @param orderInfo 出货订单信息
     * @return 结果
     */
	@Override
	public int insertOrderInfo(OrderInfo orderInfo)
	{
	    return orderInfoMapper.insertOrderInfo(orderInfo);
	}
	
	/**
     * 修改出货订单
     * 
     * @param orderInfo 出货订单信息
     * @return 结果
     */
	@Override
	public int updateOrderInfo(OrderInfo orderInfo)
	{
	    return orderInfoMapper.updateOrderInfo(orderInfo);
	}

	/**
     * 删除出货订单对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteOrderInfoByIds(String ids)
	{
		return orderInfoMapper.deleteOrderInfoByIds(Convert.toStrArray(ids));
	}
	
}
