package com.manage.project.module.orderInfo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.manage.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 出货订单表 w_order_info
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public class OrderInfo extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 订单表id */
	private Integer id;
	/** 订单编号 */
	private String orderCode;
	/** 订单时间 */
	private Date orderTime;
	/** 产品数量（总数） */
	private Integer commodityNumber;
	/** 客户id */
	private String clientId;
	/** 1出货、2进货 */
	private Integer type;
	/** 业务员编码/进货确定人员 */
	private String contactCode;
	/** 更新日期 */
	private Date updateDate;
	/** 创建日期 */
	private Date createDate;
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
	public void setOrderCode(String orderCode) 
	{
		this.orderCode = orderCode;
	}

	public String getOrderCode() 
	{
		return orderCode;
	}
	public void setOrderTime(Date orderTime) 
	{
		this.orderTime = orderTime;
	}

	public Date getOrderTime() 
	{
		return orderTime;
	}
	public void setCommodityNumber(Integer commodityNumber) 
	{
		this.commodityNumber = commodityNumber;
	}

	public Integer getCommodityNumber() 
	{
		return commodityNumber;
	}
	public void setClientId(String clientId) 
	{
		this.clientId = clientId;
	}

	public String getClientId() 
	{
		return clientId;
	}
	public void setType(Integer type) 
	{
		this.type = type;
	}

	public Integer getType() 
	{
		return type;
	}
	public void setContactCode(String contactCode) 
	{
		this.contactCode = contactCode;
	}

	public String getContactCode() 
	{
		return contactCode;
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

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderCode", getOrderCode())
            .append("orderTime", getOrderTime())
            .append("commodityNumber", getCommodityNumber())
            .append("clientId", getClientId())
            .append("type", getType())
            .append("contactCode", getContactCode())
            .append("updateDate", getUpdateDate())
            .append("createDate", getCreateDate())
            .append("delFlag", getDelFlag())
            .toString();
    }
}
