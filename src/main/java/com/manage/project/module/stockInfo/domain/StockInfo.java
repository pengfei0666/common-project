package com.manage.project.module.stockInfo.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.manage.framework.web.domain.BaseEntity;

/**
 * 库存表 w_stock_info
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public class StockInfo extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/**  */
	private Integer id;
	/** 产品编码 */
	private String commodityCode;
	/** 库存数量 */
	private Integer number;
	/** 单位（1盒，2件、3张） */
	private Integer unit;
	/** 仓库编码 */
	private String warehouseCode;

	public void setId(Integer id) 
	{
		this.id = id;
	}

	public Integer getId() 
	{
		return id;
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
	public void setUnit(Integer unit) 
	{
		this.unit = unit;
	}

	public Integer getUnit() 
	{
		return unit;
	}
	public void setWarehouseCode(String warehouseCode) 
	{
		this.warehouseCode = warehouseCode;
	}

	public String getWarehouseCode() 
	{
		return warehouseCode;
	}

    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("commodityCode", getCommodityCode())
            .append("number", getNumber())
            .append("unit", getUnit())
            .append("warehouseCode", getWarehouseCode())
            .toString();
    }
}
