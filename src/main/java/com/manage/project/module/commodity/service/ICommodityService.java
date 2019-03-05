package com.manage.project.module.commodity.service;

import com.manage.project.module.commodity.domain.Commodity;
import java.util.List;

/**
 * 产品 服务层
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public interface ICommodityService 
{
	/**
     * 查询产品信息
     * 
     * @param id 产品ID
     * @return 产品信息
     */
	public Commodity selectCommodityById(Integer id);
	
	/**
     * 查询产品列表
     * 
     * @param commodity 产品信息
     * @return 产品集合
     */
	public List<Commodity> selectCommodityList(Commodity commodity);
	
	/**
     * 新增产品
     * 
     * @param commodity 产品信息
     * @return 结果
     */
	public int insertCommodity(Commodity commodity);
	
	/**
     * 修改产品
     * 
     * @param commodity 产品信息
     * @return 结果
     */
	public int updateCommodity(Commodity commodity);
		
	/**
     * 删除产品信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteCommodityByIds(String ids);
	
}
