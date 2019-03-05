package com.manage.project.module.clientInfo.service;

import com.manage.project.module.clientInfo.domain.ClientInfo;
import java.util.List;

/**
 * 客户 服务层
 * 
 * @author PengFei
 * @date 2018-10-19
 */
public interface IClientInfoService 
{
	/**
     * 查询客户信息
     * 
     * @param id 客户ID
     * @return 客户信息
     */
	public ClientInfo selectClientInfoById(String id);
	
	/**
     * 查询客户列表
     * 
     * @param clientInfo 客户信息
     * @return 客户集合
     */
	public List<ClientInfo> selectClientInfoList(ClientInfo clientInfo);
	
	/**
     * 新增客户
     * 
     * @param clientInfo 客户信息
     * @return 结果
     */
	public int insertClientInfo(ClientInfo clientInfo);
	
	/**
     * 修改客户
     * 
     * @param clientInfo 客户信息
     * @return 结果
     */
	public int updateClientInfo(ClientInfo clientInfo);
		
	/**
     * 删除客户信息
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteClientInfoByIds(String ids);
	
}
