package com.manage.project.module.orderDetail.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.manage.framework.web.domain.BaseEntity;

/**
 * 订单详情表 w_order_detail
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public class OrderDetail extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 主键id */
	private Integer id;
	/** 订单编号 */
	private String orderCode;
	/** 货物编码 */
	private String commodityCode;
	/** 数量 */
	private Integer number;
	/** 0未发货 1已发货 2已签收 */
	private Integer deliveryFlag;
	/** 备注 */
	private String remark;

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
	public void setCommodityCode(String commodityCode) 
	{
		this.commodityCode = commodityCode;
	}

	public String getCommodityCode() 
	{
		return commodityCode;
	}
	public void setNumber(Integer number) 
	{
		this.number = number;
	}

	public Integer getNumber() 
	{
		return number;
	}
	public void setDeliveryFlag(Integer deliveryFlag) 
	{
		this.deliveryFlag = deliveryFlag;
	}

	public Integer getDeliveryFlag() 
	{
		return deliveryFlag;
	}
	public void setRemark(String remark) 
	{
		this.remark = remark;
	}

	public String getRemark() 
	{
		return remark;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("orderCode", getOrderCode())
            .append("commodityCode", getCommodityCode())
            .append("number", getNumber())
            .append("deliveryFlag", getDeliveryFlag())
            .append("remark", getRemark())
            .toString();
    }
}
