package com.manage.project.module.contact.mapper;

import com.manage.project.module.contact.domain.Contact;
import java.util.List;	

/**
 * 联系人 数据层
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public interface ContactMapper 
{
	/**
     * 查询联系人信息
     * 
     * @param id 联系人ID
     * @return 联系人信息
     */
	public Contact selectContactById(Integer id);
	
	/**
     * 查询联系人列表
     * 
     * @param contact 联系人信息
     * @return 联系人集合
     */
	public List<Contact> selectContactList(Contact contact);
	
	/**
     * 新增联系人
     * 
     * @param contact 联系人信息
     * @return 结果
     */
	public int insertContact(Contact contact);
	
	/**
     * 修改联系人
     * 
     * @param contact 联系人信息
     * @return 结果
     */
	public int updateContact(Contact contact);
	
	/**
     * 删除联系人
     * 
     * @param id 联系人ID
     * @return 结果
     */
	public int deleteContactById(Integer id);
	
	/**
     * 批量删除联系人
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
	public int deleteContactByIds(String[] ids);
	
}