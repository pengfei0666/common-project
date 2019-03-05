package com.manage.project.module.warehouse.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.manage.framework.web.domain.BaseEntity;

/**
 * 仓库表 w_warehouse
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public class Warehouse extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 主键 */
	private Integer id;
	/** 仓库名称 */
	private String name;
	/** 仓库地址 */
	private String address;
	/** 负责联系人 */
	private String contactCode;
	/** 备注 */
	private String remark;
	/** 删除标记1删除0正常 */
	private String delFlag;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
	}
	public void setName(String name) 
	{
		this.name = name;
	}

	public String getName() 
	{
		return name;
	}
	public void setAddress(String address) 
	{
		this.address = address;
	}

	public String getAddress() 
	{
		return address;
	}
	public void setContactCode(String contactCode) 
	{
		this.contactCode = contactCode;
	}

	public String getContactCode() 
	{
		return contactCode;
	}
	public void setRemark(String remark) 
	{
		this.remark = remark;
	}

	public String getRemark() 
	{
		return remark;
	}
	public void setDelFlag(String delFlag) 
	{
		this.delFlag = delFlag;
	}

	public String getDelFlag() 
	{
		return delFlag;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("name", getName())
            .append("address", getAddress())
            .append("contactCode", getContactCode())
            .append("remark", getRemark())
            .append("delFlag", getDelFlag())
            .toString();
    }
}
