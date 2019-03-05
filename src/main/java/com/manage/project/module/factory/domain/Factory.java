package com.manage.project.module.factory.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.manage.framework.web.domain.BaseEntity;

/**
 * 厂家表 w_factory
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public class Factory extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 主键 */
	private Integer id;
	/** 厂家编码 */
	private String code;
	/** 厂家名称 */
	private String name;
	/** 厂家联系人编码 */
	private String contactCode;
	/** 厂家联系电话 */
	private String phone;
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
	public void setCode(String code) 
	{
		this.code = code;
	}

	public String getCode() 
	{
		return code;
	}
	public void setName(String name) 
	{
		this.name = name;
	}

	public String getName() 
	{
		return name;
	}
	public void setContactCode(String contactCode) 
	{
		this.contactCode = contactCode;
	}

	public String getContactCode() 
	{
		return contactCode;
	}
	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public String getPhone() 
	{
		return phone;
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
            .append("code", getCode())
            .append("name", getName())
            .append("contactCode", getContactCode())
            .append("phone", getPhone())
            .append("remark", getRemark())
            .append("delFlag", getDelFlag())
            .toString();
    }
}
