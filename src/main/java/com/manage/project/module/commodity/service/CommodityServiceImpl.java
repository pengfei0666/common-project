package com.manage.project.module.commodity.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.project.module.commodity.mapper.CommodityMapper;
import com.manage.project.module.commodity.domain.Commodity;
import com.manage.project.module.commodity.service.ICommodityService;
import com.manage.common.support.Convert;

/**
 * 产品 服务层实现
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Service
public class CommodityServiceImpl implements ICommodityService 
{
	@Autowired
	private CommodityMapper commodityMapper;

	/**
     * 查询产品信息
     * 
     * @param id 产品ID
     * @return 产品信息
     */
    @Override
	public Commodity selectCommodityById(Integer id)
	{
	    return commodityMapper.selectCommodityById(id);
	}
	
	/**
     * 查询产品列表
     * 
     * @param commodity 产品信息
     * @return 产品集合
     */
	@Override
	public List<Commodity> selectCommodityList(Commodity commodity)
	{
	    return commodityMapper.selectCommodityList(commodity);
	}
	
    /**
     * 新增产品
     * 
     * @param commodity 产品信息
     * @return 结果
     */
	@Override
	public int insertCommodity(Commodity commodity)
	{
	    return commodityMapper.insertCommodity(commodity);
	}
	
	/**
     * 修改产品
     * 
     * @param commodity 产品信息
     * @return 结果
     */
	@Override
	public int updateCommodity(Commodity commodity)
	{
	    return commodityMapper.updateCommodity(commodity);
	}

	/**
     * 删除产品对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteCommodityByIds(String ids)
	{
		return commodityMapper.deleteCommodityByIds(Convert.toStrArray(ids));
	}
	
}
