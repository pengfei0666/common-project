package com.manage.project.module.contact.service;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.manage.project.module.contact.mapper.ContactMapper;
import com.manage.project.module.contact.domain.Contact;
import com.manage.project.module.contact.service.IContactService;
import com.manage.common.support.Convert;

/**
 * 联系人 服务层实现
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Service
public class ContactServiceImpl implements IContactService 
{
	@Autowired
	private ContactMapper contactMapper;

	/**
     * 查询联系人信息
     * 
     * @param id 联系人ID
     * @return 联系人信息
     */
    @Override
	public Contact selectContactById(Integer id)
	{
	    return contactMapper.selectContactById(id);
	}
	
	/**
     * 查询联系人列表
     * 
     * @param contact 联系人信息
     * @return 联系人集合
     */
	@Override
	public List<Contact> selectContactList(Contact contact)
	{
	    return contactMapper.selectContactList(contact);
	}
	
    /**
     * 新增联系人
     * 
     * @param contact 联系人信息
     * @return 结果
     */
	@Override
	public int insertContact(Contact contact)
	{
	    return contactMapper.insertContact(contact);
	}
	
	/**
     * 修改联系人
     * 
     * @param contact 联系人信息
     * @return 结果
     */
	@Override
	public int updateContact(Contact contact)
	{
	    return contactMapper.updateContact(contact);
	}

	/**
     * 删除联系人对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	@Override
	public int deleteContactByIds(String ids)
	{
		return contactMapper.deleteContactByIds(Convert.toStrArray(ids));
	}
	
}
