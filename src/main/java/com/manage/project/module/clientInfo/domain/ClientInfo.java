package com.manage.project.module.clientInfo.domain;

import com.manage.framework.web.domain.BaseEntity;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;

import java.util.Date;
/**
 * 客户表 w_client_info
 * 
 * @author PengFei
 * @date 2018-10-19
 */
public class ClientInfo extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 主键 */
	private String id;
	/** 客户公司名称 */
	private String clientName;
	/** 客户地址 */
	private String clientAddress;
	/** 税号 */
	private String taxNumber;
	/** 联系人 */
	private String contactCode;
	/** 所属省份 */
	private String province;
	/** 更新日期 */
	private Date updateDate;
	/** 创建日期 */
	private Date createDate;
	/** 删除标记1删除0正常 */
	private String delFlag;
	/** 客户电话 */
	private String clientPhone;
	/** 客户类型1公司2医院3个人 */
	private Integer clientType;

	private String clientTypeName;

	public void setId(String id) 
	{
		this.id = id;
	}

	public String getId() 
	{
		return id;
	}
	public void setClientName(String clientName) 
	{
		this.clientName = clientName;
	}

	public String getClientName() 
	{
		return clientName;
	}
	public void setClientAddress(String clientAddress) 
	{
		this.clientAddress = clientAddress;
	}

	public String getClientAddress() 
	{
		return clientAddress;
	}
	public void setTaxNumber(String taxNumber) 
	{
		this.taxNumber = taxNumber;
	}

	public String getTaxNumber() 
	{
		return taxNumber;
	}

	public String getContactCode() {
		return contactCode;
	}

	public void setContactCode(String contactCode) {
		this.contactCode = contactCode;
	}

	public void setProvince(String province)
	{
		this.province = province;
	}

	public String getProvince() 
	{
		return province;
	}
	public void setUpdateDate(Date updateDate) 
	{
		this.updateDate = updateDate;
	}

	public Date getUpdateDate() 
	{
		return updateDate;
	}
	public void setCreateDate(Date createDate) 
	{
		this.createDate = createDate;
	}

	public Date getCreateDate() 
	{
		return createDate;
	}
	public void setDelFlag(String delFlag) 
	{
		this.delFlag = delFlag;
	}

	public String getDelFlag() 
	{
		return delFlag;
	}
	public void setClientPhone(String clientPhone) 
	{
		this.clientPhone = clientPhone;
	}

	public String getClientPhone() 
	{
		return clientPhone;
	}
	public void setClientType(Integer clientType) 
	{
		this.clientType = clientType;
	}

	public Integer getClientType() 
	{
		return clientType;
	}

	public String getClientTypeName() {
		return clientTypeName;
	}

	public void setClientTypeName(String clientTypeName) {
		this.clientTypeName = clientTypeName;
	}

	public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("clientName", getClientName())
            .append("clientAddress", getClientAddress())
            .append("taxNumber", getTaxNumber())
            .append("contact", getContactCode())
            .append("province", getProvince())
            .append("updateDate", getUpdateDate())
            .append("createDate", getCreateDate())
            .append("delFlag", getDelFlag())
            .append("clientPhone", getClientPhone())
            .append("clientType", getClientType())
			.append("clientTypeName",getClientTypeName())
            .toString();
    }
}
