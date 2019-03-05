package com.manage.project.module.stockInfo.service;

import com.manage.project.module.stockInfo.domain.StockInfo;
import java.util.List;

/**
 * 库存 服务层
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public interface IStockInfoService 
{
	/**
     * 查询库存信息
     * 
     * @param id 库存ID
     * @return 库存信息
     */
	public StockInfo selectStockInfoById(Integer id);
	
	/**
     * 查询库存列表
     * 
     * @param stockInfo 库存信息
     * @return 库存集合
     */
	public List<StockInfo> selectStockInfoList(StockInfo stockInfo);
	
	/**
     * 新增库存
     * 
     * @param stockInfo 库存信息
     * @return 结果
     */
	public int insertStockInfo(StockInfo stockInfo);
	
	/**
     * 修改库存
     * 
     * @param stockInfo 库存信息
     * @return 结果
     */
	public int updateStockInfo(StockInfo stockInfo);
		
	/**
     * 删除库存信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteStockInfoByIds(String ids);
	
}
