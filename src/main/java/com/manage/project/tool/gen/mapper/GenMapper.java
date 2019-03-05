package com.manage.project.tool.gen.mapper;

import java.util.List;

import com.manage.project.tool.gen.domain.ColumnInfo;
import com.manage.project.tool.gen.domain.TableInfo;

/**
 * 代码生成 数据层
 * 
 * @author ruoyi
 */
public interface GenMapper
{
    /**
     * 查询ry MYSQL数据库表信息
     * 
     * @param tableInfo 表信息
     * @return 数据库表列表
     */
    public List<TableInfo> selectMYSQLTableList(TableInfo tableInfo);

    /**
     * MYSQL根据表名称查询信息
     * 
     * @param tableName 表名称
     * @return 表信息
     */
    public TableInfo selectMYSQLTableByName(String tableName);

    /**
     * MYSQL根据表名称查询列信息
     * 
     * @param tableName 表名称
     * @return 列信息
     */
    public List<ColumnInfo> selectMYSQLTableColumnsByName(String tableName);
    
    /**
     * 查询ry SQLSERVER数据库表信息
     * 
     * @param tableInfo 表信息
     * @return 数据库表列表
     */
    public List<TableInfo> selectSQLSERVERTableList(TableInfo tableInfo);

    /**
     * SQLSERVER根据表名称查询信息
     * 
     * @param tableName 表名称
     * @return 表信息
     */
    public TableInfo selectSQLSERVERTableByName(String tableName);

    /**
     * SQLSERVER根据表名称查询列信息
     * 
     * @param tableName 表名称
     * @return 列信息
     */
    public List<ColumnInfo> selectSQLSERVERTableColumnsByName(String tableName);
}
