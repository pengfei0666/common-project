package com.manage.project.module.contact.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.manage.framework.web.domain.BaseEntity;

/**
 * 联系人表 w_contact
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public class Contact extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 主键 */
	private Integer id;
	/** 联系人编码 */
	private String code;
	/** 联系人名字 */
	private String name;
	/** 联系人电话（可以多个，逗号隔开） */
	private String phone;
	/** 住址 */
	private String address;
	/** 类型：1厂家联系人、2客户联系人、3公司人员 */
	private Integer type;
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
	public void setPhone(String phone) 
	{
		this.phone = phone;
	}

	public String getPhone() 
	{
		return phone;
	}
	public void setAddress(String address) 
	{
		this.address = address;
	}

	public String getAddress() 
	{
		return address;
	}
	public void setType(Integer type) 
	{
		this.type = type;
	}

	public Integer getType() 
	{
		return type;
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
            .append("phone", getPhone())
            .append("address", getAddress())
            .append("type", getType())
            .append("remark", getRemark())
            .append("delFlag", getDelFlag())
            .toString();
    }
}
