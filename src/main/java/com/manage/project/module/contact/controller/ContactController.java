package com.manage.project.module.contact.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.manage.framework.aspectj.lang.annotation.Log;
import com.manage.framework.aspectj.lang.enums.BusinessType;
import com.manage.project.module.contact.domain.Contact;
import com.manage.project.module.contact.service.IContactService;
import com.manage.framework.web.controller.BaseController;
import com.manage.framework.web.page.TableDataInfo;
import com.manage.framework.web.domain.AjaxResult;

/**
 * 联系人 信息操作处理
 * 
 * @author PengFei
 * @date 2018-10-30
 */
@Controller
@RequestMapping("/module/contact")
public class ContactController extends BaseController
{
    private String prefix = "module/contact";
	
	@Autowired
	private IContactService contactService;
	
	@RequiresPermissions("module:contact:view")
	@GetMapping()
	public String contact()
	{
	    return prefix + "/contact";
	}
	
	/**
	 * 查询联系人列表
	 */
	@RequiresPermissions("module:contact:list")
	@PostMapping("/list")
	@ResponseBody
	public TableDataInfo list(Contact contact)
	{
		startPage();
        List<Contact> list = contactService.selectContactList(contact);
		return getDataTable(list);
	}
	
	/**
	 * 新增联系人
	 */
	@GetMapping("/add")
	public String add()
	{
	    return prefix + "/add";
	}
	
	/**
	 * 新增保存联系人
	 */
	@RequiresPermissions("module:contact:add")
	@Log(title = "联系人", businessType = BusinessType.INSERT)
	@PostMapping("/add")
	@ResponseBody
	public AjaxResult addSave(Contact contact)
	{		
		return toAjax(contactService.insertContact(contact));
	}

	/**
	 * 修改联系人
	 */
	@GetMapping("/edit/{id}")
	public String edit(@PathVariable("id") Integer id, ModelMap mmap)
	{
		Contact contact = contactService.selectContactById(id);
		mmap.put("contact", contact);
	    return prefix + "/edit";
	}
	
	/**
	 * 修改保存联系人
	 */
	@RequiresPermissions("module:contact:edit")
	@Log(title = "联系人", businessType = BusinessType.UPDATE)
	@PostMapping("/edit")
	@ResponseBody
	public AjaxResult editSave(Contact contact)
	{		
		return toAjax(contactService.updateContact(contact));
	}
	
	/**
	 * 删除联系人
	 */
	@RequiresPermissions("module:contact:remove")
	@Log(title = "联系人", businessType = BusinessType.DELETE)
	@PostMapping( "/remove")
	@ResponseBody
	public AjaxResult remove(String ids)
	{		
		return toAjax(contactService.deleteContactByIds(ids));
	}
	
}
