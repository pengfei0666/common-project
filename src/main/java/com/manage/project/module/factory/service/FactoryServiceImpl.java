package com.manage.project.module.factory.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.project.module.factory.mapper.FactoryMapper;
import com.manage.project.module.factory.domain.Factory;
import com.manage.project.module.factory.service.IFactoryService;
import com.manage.common.support.Convert;

/**
 * 厂家 服务层实现
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Service
public class FactoryServiceImpl implements IFactoryService 
{
	@Autowired
	private FactoryMapper factoryMapper;

	/**
     * 查询厂家信息
     * 
     * @param id 厂家ID
     * @return 厂家信息
     */
    @Override
	public Factory selectFactoryById(Integer id)
	{
	    return factoryMapper.selectFactoryById(id);
	}
	
	/**
     * 查询厂家列表
     * 
     * @param factory 厂家信息
     * @return 厂家集合
     */
	@Override
	public List<Factory> selectFactoryList(Factory factory)
	{
	    return factoryMapper.selectFactoryList(factory);
	}
	
    /**
     * 新增厂家
     * 
     * @param factory 厂家信息
     * @return 结果
     */
	@Override
	public int insertFactory(Factory factory)
	{
	    return factoryMapper.insertFactory(factory);
	}
	
	/**
     * 修改厂家
     * 
     * @param factory 厂家信息
     * @return 结果
     */
	@Override
	public int updateFactory(Factory factory)
	{
	    return factoryMapper.updateFactory(factory);
	}

	/**
     * 删除厂家对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteFactoryByIds(String ids)
	{
		return factoryMapper.deleteFactoryByIds(Convert.toStrArray(ids));
	}
	
}
