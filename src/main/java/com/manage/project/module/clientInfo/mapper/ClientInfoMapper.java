package com.manage.project.module.clientInfo.mapper;

import com.manage.project.module.clientInfo.domain.ClientInfo;
import java.util.List;	

/**
 * 客户 数据层
 * 
 * @author PengFei
 * @date 2018-10-19
 */
public interface ClientInfoMapper 
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
     * 删除客户
     * 
     * @param id 客户ID
     * @return 结果
     */
	public int deleteClientInfoById(String id);
	
	/**
     * 批量删除客户
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteClientInfoByIds(String[] ids);
	
}