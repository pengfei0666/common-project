package com.manage.project.module.warehouse.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.project.module.warehouse.mapper.WarehouseMapper;
import com.manage.project.module.warehouse.domain.Warehouse;
import com.manage.project.module.warehouse.service.IWarehouseService;
import com.manage.common.support.Convert;

/**
 * 仓库 服务层实现
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Service
public class WarehouseServiceImpl implements IWarehouseService 
{
	@Autowired
	private WarehouseMapper warehouseMapper;

	/**
     * 查询仓库信息
     * 
     * @param id 仓库ID
     * @return 仓库信息
     */
    @Override
	public Warehouse selectWarehouseById(Integer id)
	{
	    return warehouseMapper.selectWarehouseById(id);
	}
	
	/**
     * 查询仓库列表
     * 
     * @param warehouse 仓库信息
     * @return 仓库集合
     */
	@Override
	public List<Warehouse> selectWarehouseList(Warehouse warehouse)
	{
	    return warehouseMapper.selectWarehouseList(warehouse);
	}
	
    /**
     * 新增仓库
     * 
     * @param warehouse 仓库信息
     * @return 结果
     */
	@Override
	public int insertWarehouse(Warehouse warehouse)
	{
	    return warehouseMapper.insertWarehouse(warehouse);
	}
	
	/**
     * 修改仓库
     * 
     * @param warehouse 仓库信息
     * @return 结果
     */
	@Override
	public int updateWarehouse(Warehouse warehouse)
	{
	    return warehouseMapper.updateWarehouse(warehouse);
	}

	/**
     * 删除仓库对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteWarehouseByIds(String ids)
	{
		return warehouseMapper.deleteWarehouseByIds(Convert.toStrArray(ids));
	}
	
}
