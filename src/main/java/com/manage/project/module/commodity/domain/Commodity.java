package com.manage.project.module.commodity.domain;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.manage.framework.web.domain.BaseEntity;
import java.util.Date;

/**
 * 产品表 w_commodity
 * 
 * @author PengFei
 * @date 2018-10-30
 */
public class Commodity extends BaseEntity
{
	private static final long serialVersionUID = 1L;
	
	/** 主键 */
	private Integer id;
	/** 产品编码 */
	private String code;
	/** 产品名称 */
	private String name;
	/** 产品图片 */
	private String image;
	/** 单位（1盒，2件、3张） */
	private Integer unit;
	/** 数量（根据单位统计） */
	private Integer number;
	/** 所属厂家编码 */
	private String factoryCode;
	/** 创建日期 */
	private Date createDate;
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
	public void setImage(String image) 
	{
		this.image = image;
	}

	public String getImage() 
	{
		return image;
	}
	public void setUnit(Integer unit) 
	{
		this.unit = unit;
	}

	public Integer getUnit() 
	{
		return unit;
	}
	public void setNumber(Integer number) 
	{
		this.number = number;
	}

	public Integer getNumber() 
	{
		return number;
	}
	public void setFactoryCode(String factoryCode) 
	{
		this.factoryCode = factoryCode;
	}

	public String getFactoryCode() 
	{
		return factoryCode;
	}
	public void setCreateDate(Date createDate) 
	{
		this.createDate = createDate;
	}

	public Date getCreateDate() 
	{
		return createDate;
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
            .append("image", getImage())
            .append("unit", getUnit())
            .append("number", getNumber())
            .append("factoryCode", getFactoryCode())
            .append("createDate", getCreateDate())
            .append("remark", getRemark())
            .append("delFlag", getDelFlag())
            .toString();
    }
}
