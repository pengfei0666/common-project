package com.manage.project.module.clientInfo.service;

import com.manage.common.support.Convert;
import com.manage.project.module.clientInfo.domain.ClientInfo;
import com.manage.project.module.clientInfo.mapper.ClientInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import java.util.List;


/**
 * 客户 服务层实现
 * 
 * @author PengFei
 * @date 2018-10-19
 */
@Service
public class ClientInfoServiceImpl implements IClientInfoService 
{
	@Autowired
	private ClientInfoMapper clientInfoMapper;

	/**
     * 查询客户信息
     * 
     * @param id 客户ID
     * @return 客户信息
     */
    @Override
	public ClientInfo selectClientInfoById(String id)
	{
	    return clientInfoMapper.selectClientInfoById(id);
	}
	
	/**
     * 查询客户列表
     * 
     * @param clientInfo 客户信息
     * @return 客户集合
     */
	@Override
	public List<ClientInfo> selectClientInfoList(ClientInfo clientInfo)
	{
	    return clientInfoMapper.selectClientInfoList(clientInfo);
	}
	
    /**
     * 新增客户
     * 
     * @param clientInfo 客户信息
     * @return 结果
     */
	@Override
	public int insertClientInfo(ClientInfo clientInfo)
	{
	    return clientInfoMapper.insertClientInfo(clientInfo);
	}
	
	/**
     * 修改客户
     * 
     * @param clientInfo 客户信息
     * @return 结果
     */
	@Override
	public int updateClientInfo(ClientInfo clientInfo)
	{
	    return clientInfoMapper.updateClientInfo(clientInfo);
	}

	/**
     * 删除客户对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteClientInfoByIds(String ids)
	{
		return clientInfoMapper.deleteClientInfoByIds(Convert.toStrArray(ids));
	}
	
}
