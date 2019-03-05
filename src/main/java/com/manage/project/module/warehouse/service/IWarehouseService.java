package com.manage.project.module.warehouse.service;

import com.manage.project.module.warehouse.domain.Warehouse;
import java.util.List;

/**
 * 仓库 服务层
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public interface IWarehouseService 
{
	/**
     * 查询仓库信息
     * 
     * @param id 仓库ID
     * @return 仓库信息
     */
	public Warehouse selectWarehouseById(Integer id);
	
	/**
     * 查询仓库列表
     * 
     * @param warehouse 仓库信息
     * @return 仓库集合
     */
	public List<Warehouse> selectWarehouseList(Warehouse warehouse);
	
	/**
     * 新增仓库
     * 
     * @param warehouse 仓库信息
     * @return 结果
     */
	public int insertWarehouse(Warehouse warehouse);
	
	/**
     * 修改仓库
     * 
     * @param warehouse 仓库信息
     * @return 结果
     */
	public int updateWarehouse(Warehouse warehouse);
		
	/**
     * 删除仓库信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteWarehouseByIds(String ids);
	
}
