package com.manage.project.module.factory.service;

import com.manage.project.module.factory.domain.Factory;
import java.util.List;

/**
 * 厂家 服务层
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public interface IFactoryService 
{
	/**
     * 查询厂家信息
     * 
     * @param id 厂家ID
     * @return 厂家信息
     */
	public Factory selectFactoryById(Integer id);
	
	/**
     * 查询厂家列表
     * 
     * @param factory 厂家信息
     * @return 厂家集合
     */
	public List<Factory> selectFactoryList(Factory factory);
	
	/**
     * 新增厂家
     * 
     * @param factory 厂家信息
     * @return 结果
     */
	public int insertFactory(Factory factory);
	
	/**
     * 修改厂家
     * 
     * @param factory 厂家信息
     * @return 结果
     */
	public int updateFactory(Factory factory);
		
	/**
     * 删除厂家信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteFactoryByIds(String ids);
	
}
