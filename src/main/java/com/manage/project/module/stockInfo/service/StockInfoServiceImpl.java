package com.manage.project.module.stockInfo.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.project.module.stockInfo.mapper.StockInfoMapper;
import com.manage.project.module.stockInfo.domain.StockInfo;
import com.manage.project.module.stockInfo.service.IStockInfoService;
import com.manage.common.support.Convert;

/**
 * 库存 服务层实现
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Service
public class StockInfoServiceImpl implements IStockInfoService 
{
	@Autowired
	private StockInfoMapper stockInfoMapper;

	/**
     * 查询库存信息
     * 
     * @param id 库存ID
     * @return 库存信息
     */
    @Override
	public StockInfo selectStockInfoById(Integer id)
	{
	    return stockInfoMapper.selectStockInfoById(id);
	}
	
	/**
     * 查询库存列表
     * 
     * @param stockInfo 库存信息
     * @return 库存集合
     */
	@Override
	public List<StockInfo> selectStockInfoList(StockInfo stockInfo)
	{
	    return stockInfoMapper.selectStockInfoList(stockInfo);
	}
	
    /**
     * 新增库存
     * 
     * @param stockInfo 库存信息
     * @return 结果
     */
	@Override
	public int insertStockInfo(StockInfo stockInfo)
	{
	    return stockInfoMapper.insertStockInfo(stockInfo);
	}
	
	/**
     * 修改库存
     * 
     * @param stockInfo 库存信息
     * @return 结果
     */
	@Override
	public int updateStockInfo(StockInfo stockInfo)
	{
	    return stockInfoMapper.updateStockInfo(stockInfo);
	}

	/**
     * 删除库存对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteStockInfoByIds(String ids)
	{
		return stockInfoMapper.deleteStockInfoByIds(Convert.toStrArray(ids));
	}
	
}
