/*
Navicat SQL Server Data Transfer

Source Server         : 192.168.10.118
Source Server Version : 110000
Source Host           : 192.168.10.118\HIS12:1433
Source Database       : common_project
Source Schema         : dbo

Target Server Type    : SQL Server
Target Server Version : 110000
File Encoding         : 65001

Date: 2018-10-09 17:09:31
*/


-- ----------------------------
-- Table structure for sys_config
-- ----------------------------
DROP TABLE [dbo].[sys_config]
GO
CREATE TABLE [dbo].[sys_config] (
[config_id] int NOT NULL IDENTITY(1,1) ,
[config_name] varchar(100) NULL DEFAULT '' ,
[config_key] varchar(100) NULL DEFAULT '' ,
[config_value] varchar(100) NULL DEFAULT '' ,
[config_type] char(1) NULL DEFAULT ('N') ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL ,
[remark] varchar(500) NULL DEFAULT '' 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_config]', RESEED, 2)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'参数配置表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'参数配置表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'config_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'参数主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'参数主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'config_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'参数名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'参数名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'config_key')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'参数键名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_key'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'参数键名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_key'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'config_value')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'参数键值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_value'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'参数键值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_value'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'config_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统内置（Y是 N否）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统内置（Y是 N否）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'config_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_config', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_config'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of sys_config
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_config] ON
GO
INSERT INTO [dbo].[sys_config] ([config_id], [config_name], [config_key], [config_value], [config_type], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'主框架页-默认皮肤样式名称', N'sys.index.skinName', N'skin-default', N'Y', N'admin', N'2018-03-16 11:33:00.000', N'admin', N'2018-09-26 16:36:04.000', N'默认 skin-default、蓝色 skin-blue、黄色 skin-yellow')
GO
GO
INSERT INTO [dbo].[sys_config] ([config_id], [config_name], [config_key], [config_value], [config_type], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'2', N'用户管理-账号初始密码', N'sys.user.initPassword', N'123456', N'Y', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'初始化密码 123456')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_config] OFF
GO

-- ----------------------------
-- Table structure for sys_dept
-- ----------------------------
DROP TABLE [dbo].[sys_dept]
GO
CREATE TABLE [dbo].[sys_dept] (
[dept_id] int NOT NULL IDENTITY(1,1) ,
[parent_id] int NULL DEFAULT ((0)) ,
[ancestors] varchar(50) NULL DEFAULT '' ,
[dept_name] varchar(30) NULL DEFAULT '' ,
[order_num] int NULL DEFAULT ((0)) ,
[leader] varchar(20) NULL DEFAULT '' ,
[phone] varchar(11) NULL DEFAULT '' ,
[email] varchar(50) NULL DEFAULT '' ,
[status] char(1) NULL DEFAULT ('0') ,
[del_flag] char(1) NULL DEFAULT ('0') ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_dept]', RESEED, 11)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'dept_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'dept_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'dept_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'parent_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父部门id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'parent_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父部门id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'parent_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'ancestors')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'祖级列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'ancestors'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'祖级列表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'ancestors'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'dept_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'dept_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'dept_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'order_num')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'显示顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'order_num'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'显示顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'order_num'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'leader')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'负责人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'leader'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'负责人'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'leader'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'phone')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'联系电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'phone'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'联系电话'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'phone'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'email')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'email'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'email'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'del_flag')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'删除标志（0代表存在 2代表删除）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'del_flag'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'删除标志（0代表存在 2代表删除）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'del_flag'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dept', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dept'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO

-- ----------------------------
-- Records of sys_dept
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_dept] ON
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'1', N'0', N'0', N'若依科技', N'0', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'2', N'1', N'0,1', N'深圳总公司', N'1', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'3', N'1', N'0,1', N'长沙分公司', N'2', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'4', N'2', N'0,1,2', N'研发部门', N'1', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'5', N'2', N'0,1,2', N'市场部门', N'2', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'6', N'2', N'0,1,2', N'测试部门', N'3', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'7', N'2', N'0,1,2', N'财务部门', N'4', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'8', N'2', N'0,1,2', N'运维部门', N'5', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'9', N'3', N'0,1,3', N'市场部门', N'1', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'10', N'3', N'0,1,3', N'财务部门', N'2', N'若依', N'15888888888', N'ry@qq.com', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000')
GO
GO
INSERT INTO [dbo].[sys_dept] ([dept_id], [parent_id], [ancestors], [dept_name], [order_num], [leader], [phone], [email], [status], [del_flag], [create_by], [create_time], [update_by], [update_time]) VALUES (N'11', N'3', N'0,1,3', N'开发部门', N'3', N'manage', N'13540682157', N'manage_jin@163.com', N'0', N'0', N'admin', N'2018-10-09 10:58:45.797', N'', null)
GO
GO
SET IDENTITY_INSERT [dbo].[sys_dept] OFF
GO

-- ----------------------------
-- Table structure for sys_dict_data
-- ----------------------------
DROP TABLE [dbo].[sys_dict_data]
GO
CREATE TABLE [dbo].[sys_dict_data] (
[dict_code] int NOT NULL IDENTITY(1,1) ,
[dict_sort] int NULL DEFAULT ((0)) ,
[dict_label] varchar(100) NULL DEFAULT '' ,
[dict_value] varchar(100) NULL DEFAULT '' ,
[dict_type] varchar(100) NULL DEFAULT '' ,
[css_class] varchar(500) NULL DEFAULT '' ,
[list_class] varchar(500) NULL DEFAULT '' ,
[is_default] char(1) NULL DEFAULT ('N') ,
[status] char(1) NULL DEFAULT ('0') ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL ,
[remark] varchar(500) NULL DEFAULT '' 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_dict_data]', RESEED, 25)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典数据表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典数据表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'dict_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'dict_sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典排序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_sort'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'dict_label')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典标签'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_label'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典标签'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_label'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'dict_value')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典键值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_value'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典键值'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_value'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'dict_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'dict_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'css_class')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'样式属性（其他样式扩展）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'css_class'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'样式属性（其他样式扩展）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'css_class'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'list_class')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'表格回显样式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'list_class'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'表格回显样式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'list_class'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'is_default')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'是否默认（Y是 N否）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'is_default'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'是否默认（Y是 N否）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'is_default'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_data', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_data'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of sys_dict_data
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_dict_data] ON
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'1', N'男', N'0', N'sys_user_sex', N'', N'', N'Y', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'性别男')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'2', N'2', N'女', N'1', N'sys_user_sex', N'', N'', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'性别女')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'3', N'3', N'未知', N'2', N'sys_user_sex', N'', N'', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'性别未知')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'4', N'1', N'显示', N'0', N'sys_show_hide', N'', N'primary', N'Y', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'显示菜单')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'5', N'2', N'隐藏', N'1', N'sys_show_hide', N'', N'danger', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'隐藏菜单')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'6', N'1', N'正常', N'0', N'sys_normal_disable', N'', N'primary', N'Y', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'正常状态')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'7', N'2', N'停用', N'1', N'sys_normal_disable', N'', N'danger', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'停用状态')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'8', N'1', N'正常', N'0', N'sys_job_status', N'', N'primary', N'Y', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'正常状态')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'9', N'2', N'暂停', N'1', N'sys_job_status', N'', N'danger', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'停用状态')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'10', N'1', N'是', N'Y', N'sys_yes_no', N'', N'primary', N'Y', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'系统默认是')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'11', N'2', N'否', N'N', N'sys_yes_no', N'', N'danger', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'系统默认否')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'12', N'1', N'通知', N'1', N'sys_notice_type', N'', N'warning', N'Y', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'通知')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'13', N'2', N'公告', N'2', N'sys_notice_type', N'', N'success', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'公告')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'14', N'1', N'正常', N'0', N'sys_notice_status', N'', N'primary', N'Y', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'正常状态')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'15', N'2', N'关闭', N'1', N'sys_notice_status', N'', N'danger', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'关闭状态')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'16', N'1', N'新增', N'1', N'sys_oper_type', N'', N'info', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'新增操作')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'17', N'2', N'修改', N'2', N'sys_oper_type', N'', N'info', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'新增操作')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'18', N'3', N'删除', N'3', N'sys_oper_type', N'', N'danger', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'新增操作')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'19', N'4', N'授权', N'4', N'sys_oper_type', N'', N'primary', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'新增操作')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'20', N'5', N'导出', N'5', N'sys_oper_type', N'', N'warning', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'新增操作')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'21', N'6', N'导入', N'6', N'sys_oper_type', N'', N'warning', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'新增操作')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'22', N'7', N'强退', N'7', N'sys_oper_type', N'', N'danger', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'新增操作')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'23', N'8', N'生成代码', N'8', N'sys_oper_type', N'', N'warning', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'新增操作')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'24', N'1', N'成功', N'0', N'sys_common_status', N'', N'primary', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'正常状态')
GO
GO
INSERT INTO [dbo].[sys_dict_data] ([dict_code], [dict_sort], [dict_label], [dict_value], [dict_type], [css_class], [list_class], [is_default], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'25', N'2', N'失败', N'1', N'sys_common_status', N'', N'danger', N'N', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'停用状态')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_dict_data] OFF
GO

-- ----------------------------
-- Table structure for sys_dict_type
-- ----------------------------
DROP TABLE [dbo].[sys_dict_type]
GO
CREATE TABLE [dbo].[sys_dict_type] (
[dict_id] int NOT NULL IDENTITY(1,1) ,
[dict_name] varchar(100) NULL DEFAULT '' ,
[dict_type] varchar(100) NULL DEFAULT '' ,
[status] char(1) NULL DEFAULT ('0') ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL ,
[remark] varchar(500) NULL DEFAULT '' 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_dict_type]', RESEED, 9)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典类型表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典类型表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
'COLUMN', N'dict_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'dict_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'dict_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
'COLUMN', N'dict_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'dict_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'dict_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
'COLUMN', N'dict_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'字典类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'dict_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'字典类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'dict_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_dict_type', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_dict_type'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of sys_dict_type
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_dict_type] ON
GO
INSERT INTO [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'用户性别', N'sys_user_sex', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'用户性别列表')
GO
GO
INSERT INTO [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'2', N'菜单状态', N'sys_show_hide', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'菜单状态列表')
GO
GO
INSERT INTO [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'3', N'系统开关', N'sys_normal_disable', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'系统开关列表')
GO
GO
INSERT INTO [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'4', N'任务状态', N'sys_job_status', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'任务状态列表')
GO
GO
INSERT INTO [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'5', N'系统是否', N'sys_yes_no', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'系统是否列表')
GO
GO
INSERT INTO [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'6', N'通知类型', N'sys_notice_type', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'通知类型列表')
GO
GO
INSERT INTO [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'7', N'通知状态', N'sys_notice_status', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'通知状态列表')
GO
GO
INSERT INTO [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'8', N'操作类型', N'sys_oper_type', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'操作类型列表')
GO
GO
INSERT INTO [dbo].[sys_dict_type] ([dict_id], [dict_name], [dict_type], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'9', N'系统状态', N'sys_common_status', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'登录状态列表')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_dict_type] OFF
GO

-- ----------------------------
-- Table structure for sys_job
-- ----------------------------
DROP TABLE [dbo].[sys_job]
GO
CREATE TABLE [dbo].[sys_job] (
[job_id] int NOT NULL IDENTITY(1,1) ,
[job_name] varchar(64) NOT NULL DEFAULT '' ,
[job_group] varchar(64) NOT NULL DEFAULT '' ,
[method_name] varchar(500) NULL DEFAULT '' ,
[method_params] varchar(200) NULL DEFAULT '' ,
[cron_expression] varchar(255) NULL DEFAULT '' ,
[misfire_policy] varchar(20) NULL DEFAULT ('0') ,
[status] char(1) NULL DEFAULT ('0') ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL ,
[remark] varchar(500) NULL DEFAULT '' 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_job]', RESEED, 2)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'定时任务调度表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'定时任务调度表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'job_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'job_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'job_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'job_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'job_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'job_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'job_group')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务组名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'job_group'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务组名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'job_group'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'method_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务方法'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'method_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务方法'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'method_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'method_params')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'方法参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'method_params'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'方法参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'method_params'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'cron_expression')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'cron执行表达式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'cron_expression'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'cron执行表达式'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'cron_expression'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'misfire_policy')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'计划执行错误策略（0默认 1继续 2等待 3放弃）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'misfire_policy'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'计划执行错误策略（0默认 1继续 2等待 3放弃）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'misfire_policy'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态（0正常 1暂停）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态（0正常 1暂停）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of sys_job
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_job] ON
GO
INSERT INTO [dbo].[sys_job] ([job_id], [job_name], [job_group], [method_name], [method_params], [cron_expression], [misfire_policy], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'0/10 * * * * ?', N'0', N'1', N'admin', N'2018-03-16 11:33:00.000', N'admin', N'2018-09-30 14:58:45.000', N'')
GO
GO
INSERT INTO [dbo].[sys_job] ([job_id], [job_name], [job_group], [method_name], [method_params], [cron_expression], [misfire_policy], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'2', N'ryTask', N'系统默认（有参）', N'ryParams', N'ry', N'0/20 * * * * ?', N'0', N'1', N'admin', N'2018-03-16 11:33:00.000', N'admin', N'2018-09-29 16:15:19.000', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_job] OFF
GO

-- ----------------------------
-- Table structure for sys_job_log
-- ----------------------------
DROP TABLE [dbo].[sys_job_log]
GO
CREATE TABLE [dbo].[sys_job_log] (
[job_log_id] int NOT NULL IDENTITY(1,1) ,
[job_name] varchar(64) NOT NULL ,
[job_group] varchar(64) NOT NULL ,
[method_name] varchar(500) NULL DEFAULT NULL ,
[method_params] varchar(200) NULL DEFAULT '' ,
[job_message] varchar(500) NULL DEFAULT NULL ,
[status] char(1) NULL DEFAULT ('0') ,
[exception_info] text NULL ,
[create_time] datetime NULL DEFAULT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_job_log]', RESEED, 18)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'定时任务调度日志表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'定时任务调度日志表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
'COLUMN', N'job_log_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务日志ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'job_log_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务日志ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'job_log_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
'COLUMN', N'job_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'job_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'job_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
'COLUMN', N'job_group')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务组名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'job_group'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务组名'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'job_group'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
'COLUMN', N'method_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'任务方法'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'method_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'任务方法'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'method_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
'COLUMN', N'method_params')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'方法参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'method_params'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'方法参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'method_params'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
'COLUMN', N'job_message')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'job_message'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'job_message'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'执行状态（0正常 1失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'执行状态（0正常 1失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
'COLUMN', N'exception_info')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'异常信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'exception_info'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'异常信息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'exception_info'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_job_log', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_job_log'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO

-- ----------------------------
-- Records of sys_job_log
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_job_log] ON
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'1', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:17:49.667')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'2', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:17:50.047')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'3', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:18:00.047')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'4', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：2毫秒', N'0', null, N'2018-10-09 14:18:10.090')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'5', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:18:55.333')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'6', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:19:00.057')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'7', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：2毫秒', N'0', null, N'2018-10-09 14:19:10.083')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'17', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：34毫秒', N'0', null, N'2018-10-09 17:05:17.097')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'18', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 17:05:20.027')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'8', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:19:20.043')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'9', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：2毫秒', N'0', null, N'2018-10-09 14:19:30.103')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'10', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：0毫秒', N'0', null, N'2018-10-09 14:19:40.053')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'11', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:19:50.080')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'12', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：2毫秒', N'0', null, N'2018-10-09 14:20:00.153')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'13', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:20:10.067')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'14', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:20:20.037')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'15', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：1毫秒', N'0', null, N'2018-10-09 14:20:30.057')
GO
GO
INSERT INTO [dbo].[sys_job_log] ([job_log_id], [job_name], [job_group], [method_name], [method_params], [job_message], [status], [exception_info], [create_time]) VALUES (N'16', N'ryTask', N'系统默认（无参）', N'ryNoParams', N'', N'ryTask 总共耗时：3毫秒', N'0', null, N'2018-10-09 14:20:40.097')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_job_log] OFF
GO

-- ----------------------------
-- Table structure for sys_logininfor
-- ----------------------------
DROP TABLE [dbo].[sys_logininfor]
GO
CREATE TABLE [dbo].[sys_logininfor] (
[info_id] int NOT NULL IDENTITY(1,1) ,
[login_name] varchar(50) NULL DEFAULT '' ,
[ipaddr] varchar(50) NULL DEFAULT '' ,
[login_location] varchar(255) NULL DEFAULT '' ,
[browser] varchar(50) NULL DEFAULT '' ,
[os] varchar(50) NULL DEFAULT '' ,
[status] char(1) NULL DEFAULT ('0') ,
[msg] varchar(255) NULL DEFAULT '' ,
[login_time] datetime NULL DEFAULT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_logininfor]', RESEED, 46)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'系统访问记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'系统访问记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
'COLUMN', N'info_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'访问ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'info_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'访问ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'info_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
'COLUMN', N'login_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'login_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'login_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
'COLUMN', N'ipaddr')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'ipaddr'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'ipaddr'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
'COLUMN', N'login_location')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录地点'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'login_location'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录地点'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'login_location'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
'COLUMN', N'browser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'浏览器类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'browser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'浏览器类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'browser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
'COLUMN', N'os')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作系统'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'os'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作系统'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'os'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录状态（0成功 1失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录状态（0成功 1失败）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
'COLUMN', N'msg')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'提示消息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'msg'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'提示消息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'msg'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_logininfor', 
'COLUMN', N'login_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'访问时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'login_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'访问时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_logininfor'
, @level2type = 'COLUMN', @level2name = N'login_time'
GO

-- ----------------------------
-- Records of sys_logininfor
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_logininfor] ON
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'35', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 11:06:30.087')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'38', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 14:14:28.473')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'41', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 14:44:38.637')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'36', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 11:18:12.343')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'37', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 13:38:11.657')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'39', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'1', N'密码输入错误1次', N'2018-10-09 14:23:01.940')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'40', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 14:23:06.807')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'42', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 15:27:07.080')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'43', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 15:32:23.067')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'44', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 16:28:03.747')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'45', N'admin', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 16:45:30.300')
GO
GO
INSERT INTO [dbo].[sys_logininfor] ([info_id], [login_name], [ipaddr], [login_location], [browser], [os], [status], [msg], [login_time]) VALUES (N'46', N'admin', N'192.168.10.20', N'XX XX', N'Chrome', N'Windows 10', N'0', N'登录成功', N'2018-10-09 17:04:26.873')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_logininfor] OFF
GO

-- ----------------------------
-- Table structure for sys_menu
-- ----------------------------
DROP TABLE [dbo].[sys_menu]
GO
CREATE TABLE [dbo].[sys_menu] (
[menu_id] int NOT NULL IDENTITY(1,1) ,
[menu_name] varchar(50) NOT NULL ,
[parent_id] int NULL DEFAULT ((0)) ,
[order_num] int NULL DEFAULT ((0)) ,
[url] varchar(200) NULL DEFAULT ('#') ,
[menu_type] char(1) NULL DEFAULT '' ,
[visible] char(1) NULL DEFAULT ('0') ,
[perms] varchar(100) NULL DEFAULT '' ,
[icon] varchar(100) NULL DEFAULT ('#') ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL ,
[remark] varchar(500) NULL DEFAULT '' 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_menu]', RESEED, 76)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单权限表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单权限表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'menu_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'menu_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'parent_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'父菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'parent_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'父菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'parent_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'order_num')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'显示顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'order_num'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'显示顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'order_num'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'url')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'请求地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'url'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'请求地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'url'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'menu_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单类型（M目录 C菜单 F按钮）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单类型（M目录 C菜单 F按钮）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'menu_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'visible')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单状态（0显示 1隐藏）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'visible'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单状态（0显示 1隐藏）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'visible'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'perms')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'权限标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'perms'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'权限标识'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'perms'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'icon')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'icon'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单图标'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'icon'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_menu', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_menu'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of sys_menu
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_menu] ON
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'系统管理', N'0', N'1', N'#', N'M', N'0', N'', N'fa fa-gear', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'系统管理目录')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'2', N'系统监控', N'0', N'2', N'#', N'M', N'0', N'', N'fa fa-video-camera', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'系统监控目录')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'3', N'系统工具', N'0', N'3', N'#', N'M', N'0', N'', N'fa fa-bars', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'系统工具目录')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'4', N'用户管理', N'1', N'1', N'/system/user', N'C', N'0', N'system:user:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'用户管理菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'5', N'角色管理', N'1', N'2', N'/system/role', N'C', N'0', N'system:role:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'角色管理菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'6', N'菜单管理', N'1', N'3', N'/system/menu', N'C', N'0', N'system:menu:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'菜单管理菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'7', N'部门管理', N'1', N'4', N'/system/dept', N'C', N'0', N'system:dept:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'部门管理菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'8', N'岗位管理', N'1', N'5', N'/system/post', N'C', N'0', N'system:post:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'岗位管理菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'9', N'字典管理', N'1', N'6', N'/system/dict', N'C', N'0', N'system:dict:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'字典管理菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'10', N'参数设置', N'1', N'7', N'/system/config', N'C', N'0', N'system:config:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'参数设置菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'11', N'通知公告', N'1', N'8', N'/system/notice', N'C', N'0', N'system:notice:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'通知公告菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'12', N'日志管理', N'1', N'9', N'#', N'M', N'0', N'', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'日志管理菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'13', N'在线用户', N'2', N'1', N'/monitor/online', N'C', N'0', N'monitor:online:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'在线用户菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'14', N'定时任务', N'2', N'2', N'/monitor/job', N'C', N'0', N'monitor:job:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'定时任务菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'15', N'数据监控', N'2', N'3', N'/monitor/data', N'C', N'0', N'monitor:data:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'数据监控菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'16', N'表单构建', N'3', N'1', N'/tool/build', N'C', N'0', N'tool:build:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'表单构建菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'18', N'系统接口', N'3', N'3', N'/tool/swagger', N'C', N'0', N'tool:swagger:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'系统接口菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'19', N'操作日志', N'12', N'1', N'/monitor/operlog', N'C', N'0', N'monitor:operlog:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'操作日志菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'20', N'登录日志', N'12', N'2', N'/monitor/logininfor', N'C', N'0', N'monitor:logininfor:view', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'登录日志菜单')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'21', N'用户查询', N'4', N'1', N'#', N'F', N'0', N'system:user:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'22', N'用户新增', N'4', N'2', N'#', N'F', N'0', N'system:user:add', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'23', N'用户修改', N'4', N'3', N'#', N'F', N'0', N'system:user:edit', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'24', N'用户删除', N'4', N'4', N'#', N'F', N'0', N'system:user:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'25', N'用户导出', N'4', N'5', N'#', N'F', N'0', N'system:user:export', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'26', N'重置密码', N'4', N'5', N'#', N'F', N'0', N'system:user:resetPwd', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'27', N'角色查询', N'5', N'1', N'#', N'F', N'0', N'system:role:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'28', N'角色新增', N'5', N'2', N'#', N'F', N'0', N'system:role:add', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'29', N'角色修改', N'5', N'3', N'#', N'F', N'0', N'system:role:edit', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'30', N'角色删除', N'5', N'4', N'#', N'F', N'0', N'system:role:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'31', N'角色导出', N'5', N'4', N'#', N'F', N'0', N'system:role:export', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'32', N'菜单查询', N'6', N'1', N'#', N'F', N'0', N'system:menu:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'33', N'菜单新增', N'6', N'2', N'#', N'F', N'0', N'system:menu:add', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'34', N'菜单修改', N'6', N'3', N'#', N'F', N'0', N'system:menu:edit', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'35', N'菜单删除', N'6', N'4', N'#', N'F', N'0', N'system:menu:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'36', N'部门查询', N'7', N'1', N'#', N'F', N'0', N'system:dept:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'37', N'部门新增', N'7', N'2', N'#', N'F', N'0', N'system:dept:add', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'38', N'部门修改', N'7', N'3', N'#', N'F', N'0', N'system:dept:edit', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'39', N'部门删除', N'7', N'4', N'#', N'F', N'0', N'system:dept:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'40', N'岗位查询', N'8', N'1', N'#', N'F', N'0', N'system:post:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'41', N'岗位新增', N'8', N'2', N'#', N'F', N'0', N'system:post:add', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'42', N'岗位修改', N'8', N'3', N'#', N'F', N'0', N'system:post:edit', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'43', N'岗位删除', N'8', N'4', N'#', N'F', N'0', N'system:post:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'44', N'岗位导出', N'8', N'4', N'#', N'F', N'0', N'system:post:export', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'45', N'字典查询', N'9', N'1', N'#', N'F', N'0', N'system:dict:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'46', N'字典新增', N'9', N'2', N'#', N'F', N'0', N'system:dict:add', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'47', N'字典修改', N'9', N'3', N'#', N'F', N'0', N'system:dict:edit', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'48', N'字典删除', N'9', N'4', N'#', N'F', N'0', N'system:dict:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'49', N'字典导出', N'9', N'4', N'#', N'F', N'0', N'system:dict:export', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'50', N'参数查询', N'10', N'1', N'#', N'F', N'0', N'system:config:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'51', N'参数新增', N'10', N'2', N'#', N'F', N'0', N'system:config:add', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'52', N'参数修改', N'10', N'3', N'#', N'F', N'0', N'system:config:edit', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'53', N'参数删除', N'10', N'4', N'#', N'F', N'0', N'system:config:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'54', N'参数导出', N'10', N'4', N'#', N'F', N'0', N'system:config:export', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'55', N'公告查询', N'11', N'1', N'#', N'F', N'0', N'system:notice:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'56', N'公告新增', N'11', N'2', N'#', N'F', N'0', N'system:notice:add', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'57', N'公告修改', N'11', N'3', N'#', N'F', N'0', N'system:notice:edit', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'58', N'公告删除', N'11', N'4', N'#', N'F', N'0', N'system:notice:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'59', N'操作查询', N'19', N'1', N'#', N'F', N'0', N'monitor:operlog:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'60', N'操作删除', N'19', N'2', N'#', N'F', N'0', N'monitor:operlog:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'61', N'详细信息', N'19', N'3', N'#', N'F', N'0', N'monitor:operlog:detail', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'62', N'日志导出', N'19', N'3', N'#', N'F', N'0', N'monitor:operlog:export', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'63', N'登录查询', N'20', N'1', N'#', N'F', N'0', N'monitor:logininfor:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'64', N'登录删除', N'20', N'2', N'#', N'F', N'0', N'monitor:logininfor:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'65', N'日志导出', N'20', N'2', N'#', N'F', N'0', N'monitor:logininfor:export', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'66', N'在线查询', N'13', N'1', N'#', N'F', N'0', N'monitor:online:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'67', N'批量强退', N'13', N'2', N'#', N'F', N'0', N'monitor:online:batchForceLogout', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'68', N'单条强退', N'13', N'3', N'#', N'F', N'0', N'monitor:online:forceLogout', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'69', N'任务查询', N'14', N'1', N'#', N'F', N'0', N'monitor:job:list', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'70', N'任务新增', N'14', N'2', N'#', N'F', N'0', N'monitor:job:add', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'71', N'任务修改', N'14', N'3', N'#', N'F', N'0', N'monitor:job:edit', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'72', N'任务删除', N'14', N'4', N'#', N'F', N'0', N'monitor:job:remove', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'73', N'状态修改', N'14', N'5', N'#', N'F', N'0', N'monitor:job:changeStatus', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_menu] ([menu_id], [menu_name], [parent_id], [order_num], [url], [menu_type], [visible], [perms], [icon], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'74', N'任务导出', N'14', N'5', N'#', N'F', N'0', N'monitor:job:export', N'#', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_menu] OFF
GO

-- ----------------------------
-- Table structure for sys_notice
-- ----------------------------
DROP TABLE [dbo].[sys_notice]
GO
CREATE TABLE [dbo].[sys_notice] (
[notice_id] int NOT NULL IDENTITY(1,1) ,
[notice_title] varchar(50) NOT NULL ,
[notice_type] varchar(2) NOT NULL ,
[notice_content] varchar(500) NOT NULL ,
[status] char(1) NULL DEFAULT ('0') ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL ,
[remark] varchar(255) NULL DEFAULT '' 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'通知公告表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'通知公告表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'notice_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'公告ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'notice_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'公告ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'notice_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'notice_title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'公告标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'notice_title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'公告标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'notice_title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'notice_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'公告类型（1通知 2公告）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'notice_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'公告类型（1通知 2公告）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'notice_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'notice_content')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'公告内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'notice_content'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'公告内容'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'notice_content'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'公告状态（0正常 1关闭）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'公告状态（0正常 1关闭）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_notice', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_notice'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of sys_notice
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_notice] ON
GO
INSERT INTO [dbo].[sys_notice] ([notice_id], [notice_title], [notice_type], [notice_content], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'系统管理发布了', N'2', N'<p></p><ol><li>系统管理发布啦！<br></li></ol><p></p>', N'0', N'admin', N'2018-10-09 15:42:15.023', N'admin', N'2018-10-09 15:42:50.993', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_notice] OFF
GO

-- ----------------------------
-- Table structure for sys_oper_log
-- ----------------------------
DROP TABLE [dbo].[sys_oper_log]
GO
CREATE TABLE [dbo].[sys_oper_log] (
[oper_id] int NOT NULL IDENTITY(1,1) ,
[title] varchar(50) NULL DEFAULT '' ,
[business_type] int NULL DEFAULT ((0)) ,
[method] varchar(100) NULL DEFAULT '' ,
[operator_type] int NULL DEFAULT ((0)) ,
[oper_name] varchar(50) NULL DEFAULT '' ,
[dept_name] varchar(50) NULL DEFAULT '' ,
[oper_url] varchar(255) NULL DEFAULT '' ,
[oper_ip] varchar(30) NULL DEFAULT '' ,
[oper_location] varchar(255) NULL DEFAULT '' ,
[oper_param] varchar(255) NULL DEFAULT '' ,
[status] int NULL DEFAULT ((0)) ,
[error_msg] varchar(2000) NULL DEFAULT '' ,
[oper_time] datetime NULL DEFAULT NULL 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_oper_log]', RESEED, 26)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作日志记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作日志记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'oper_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'日志主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'日志主键'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'title')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'模块标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'title'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'模块标题'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'title'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'business_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'业务类型（0其它 1新增 2修改 3删除）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'business_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'业务类型（0其它 1新增 2修改 3删除）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'business_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'method')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'方法名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'method'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'方法名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'method'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'operator_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作类别（0其它 1后台用户 2手机端用户）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'operator_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作类别（0其它 1后台用户 2手机端用户）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'operator_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'oper_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作人员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作人员'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'dept_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'dept_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'dept_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'oper_url')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'请求URL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_url'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'请求URL'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_url'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'oper_ip')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'主机地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_ip'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'主机地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_ip'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'oper_location')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作地点'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_location'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作地点'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_location'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'oper_param')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'请求参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_param'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'请求参数'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_param'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作状态（0正常 1异常）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作状态（0正常 1异常）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'error_msg')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'错误消息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'error_msg'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'错误消息'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'error_msg'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_oper_log', 
'COLUMN', N'oper_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_oper_log'
, @level2type = 'COLUMN', @level2name = N'oper_time'
GO

-- ----------------------------
-- Records of sys_oper_log
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_oper_log] ON
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'7', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.changeStatus()', N'1', N'admin', null, N'/common-project/monitor/job/changeStatus', N'127.0.0.1', N'XX XX', N'{"jobId":["1"],"status":["0"]}', N'0', null, N'2018-10-09 14:18:55.240')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'8', N'个人信息', N'2', N'com.manage.project.system.user.controller.ProfileController.update()', N'1', N'admin', N'研发部门', N'/common-project/system/user/profile/update', N'127.0.0.1', N'XX XX', N'{"userId":["1"],"loginName":["admin"],"dept.deptName":["研发部门"],"userName":["若依"],"email":["ry@163.com"],"phonenumber":["15888888888"],"sex":["1"]}', N'1', N'com.manage.project.monitor.online.domain.OnlineSession cannot be cast to com.manage.project.monitor.online.domain.OnlineSession', N'2018-10-09 14:19:55.730')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'12', N'个人信息', N'2', N'com.manage.project.system.user.controller.ProfileController.update()', N'1', N'admin', N'研发部门', N'/common-project/system/user/profile/update', N'127.0.0.1', N'XX XX', N'{"userId":["1"],"loginName":["admin"],"dept.deptName":["研发部门"],"userName":["若依"],"email":["ry@163.com"],"phonenumber":["15888888888"],"sex":["0"]}', N'0', null, N'2018-10-09 14:23:55.107')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'13', N'重置密码', N'2', N'com.manage.project.system.user.controller.ProfileController.resetPwd()', N'1', N'admin', N'研发部门', N'/common-project/system/user/profile/resetPwd', N'127.0.0.1', N'XX XX', N'{"userId":["1"],"loginName":["admin"],"oldPassword":["admin123"],"password":["123456"],"confirm":["123456"]}', N'0', null, N'2018-10-09 14:24:11.623')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'17', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.run()', N'1', N'admin', N'研发部门', N'/common-project/monitor/job/run', N'127.0.0.1', N'XX XX', N'{"jobId":["1"]}', N'0', null, N'2018-10-09 15:58:49.837')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'18', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.run()', N'1', N'admin', N'研发部门', N'/common-project/monitor/job/run', N'127.0.0.1', N'XX XX', N'{"jobId":["1"]}', N'0', null, N'2018-10-09 16:02:12.687')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'19', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.run()', N'1', N'admin', N'研发部门', N'/common-project/monitor/job/run', N'127.0.0.1', N'XX XX', N'{"jobId":["1"]}', N'0', null, N'2018-10-09 16:28:16.513')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'20', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.run()', N'1', N'admin', N'研发部门', N'/common-project/monitor/job/run', N'127.0.0.1', N'XX XX', N'{"jobId":["1"]}', N'0', null, N'2018-10-09 16:46:07.387')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'21', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.run()', N'1', N'admin', N'研发部门', N'/common-project/monitor/job/run', N'127.0.0.1', N'XX XX', N'{"jobId":["1"]}', N'0', null, N'2018-10-09 17:00:39.290')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'22', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.run()', N'1', N'admin', N'研发部门', N'/common-project/monitor/job/run', N'192.168.10.20', N'XX XX', N'{"jobId":["1"]}', N'0', null, N'2018-10-09 17:05:13.517')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'23', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.changeStatus()', N'1', N'admin', N'研发部门', N'/common-project/monitor/job/changeStatus', N'192.168.10.20', N'XX XX', N'{"jobId":["1"],"status":["0"]}', N'0', null, N'2018-10-09 17:05:17.007')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'24', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.changeStatus()', N'1', N'admin', N'研发部门', N'/common-project/monitor/job/changeStatus', N'192.168.10.20', N'XX XX', N'{"jobId":["1"],"status":["1"]}', N'0', null, N'2018-10-09 17:05:20.280')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'25', N'在线用户', N'7', N'com.manage.project.monitor.online.controller.UserOnlineController.forceLogout()', N'1', N'admin', N'研发部门', N'/common-project/monitor/online/forceLogout', N'192.168.10.20', N'XX XX', N'{"sessionId":["ef40dae7-8a27-4344-a353-1fcb0ef0095f"]}', N'0', null, N'2018-10-09 17:05:32.340')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'26', N'在线用户', N'7', N'com.manage.project.monitor.online.controller.UserOnlineController.forceLogout()', N'1', N'admin', N'研发部门', N'/common-project/monitor/online/forceLogout', N'192.168.10.20', N'XX XX', N'{"sessionId":["81c4cde4-02db-4b12-8f78-13fafc01c576"]}', N'0', null, N'2018-10-09 17:05:36.090')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'9', N'个人信息', N'2', N'com.manage.project.system.user.controller.ProfileController.update()', N'1', N'admin', N'研发部门', N'/common-project/system/user/profile/update', N'127.0.0.1', N'XX XX', N'{"userId":["1"],"loginName":["admin"],"dept.deptName":["研发部门"],"userName":["若依"],"email":["ry@163.com"],"phonenumber":["15888888888"],"sex":["1"]}', N'1', N'com.manage.project.monitor.online.domain.OnlineSession cannot be cast to com.manage.project.monitor.online.domain.OnlineSession', N'2018-10-09 14:20:01.530')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'10', N'重置密码', N'2', N'com.manage.project.system.user.controller.ProfileController.resetPwd()', N'1', N'admin', N'研发部门', N'/common-project/system/user/profile/resetPwd', N'127.0.0.1', N'XX XX', N'{"userId":["1"],"loginName":["admin"],"oldPassword":["123456"],"password":["admin123"],"confirm":["admin123"]}', N'1', N'com.manage.project.monitor.online.domain.OnlineSession cannot be cast to com.manage.project.monitor.online.domain.OnlineSession', N'2018-10-09 14:20:18.347')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'11', N'定时任务', N'2', N'com.manage.project.monitor.job.controller.JobController.changeStatus()', N'1', N'admin', N'研发部门', N'/common-project/monitor/job/changeStatus', N'127.0.0.1', N'XX XX', N'{"jobId":["1"],"status":["1"]}', N'0', null, N'2018-10-09 14:20:45.923')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'14', N'通知公告', N'2', N'com.manage.project.system.notice.controller.NoticeController.editSave()', N'1', N'admin', N'研发部门', N'/common-project/system/notice/edit', N'127.0.0.1', N'XX XX', N'{"noticeId":["1"],"noticeTitle":["温馨提醒：2018-07-01 若依新版本发布啦"],"noticeType":["1"],"noticeContent":["新版本内容"],"status":["0"]}', N'0', null, N'2018-10-09 14:53:02.610')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'15', N'通知公告', N'1', N'com.manage.project.system.notice.controller.NoticeController.addSave()', N'1', N'admin', N'研发部门', N'/common-project/system/notice/add', N'127.0.0.1', N'XX XX', N'{"noticeTitle":["系统管理发布了"],"noticeType":["1"],"noticeContent":["<p><ol><li>系统管理发布啦！<br></li></ol></p>"],"status":["0"]}', N'0', null, N'2018-10-09 15:42:15.187')
GO
GO
INSERT INTO [dbo].[sys_oper_log] ([oper_id], [title], [business_type], [method], [operator_type], [oper_name], [dept_name], [oper_url], [oper_ip], [oper_location], [oper_param], [status], [error_msg], [oper_time]) VALUES (N'16', N'通知公告', N'2', N'com.manage.project.system.notice.controller.NoticeController.editSave()', N'1', N'admin', N'研发部门', N'/common-project/system/notice/edit', N'127.0.0.1', N'XX XX', N'{"noticeId":["1"],"noticeTitle":["系统管理发布了"],"noticeType":["2"],"noticeContent":["<p></p><ol><li>系统管理发布啦！<br></li></ol><p></p>"],"status":["0"]}', N'0', null, N'2018-10-09 15:42:51.013')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_oper_log] OFF
GO

-- ----------------------------
-- Table structure for sys_post
-- ----------------------------
DROP TABLE [dbo].[sys_post]
GO
CREATE TABLE [dbo].[sys_post] (
[post_id] int NOT NULL IDENTITY(1,1) ,
[post_code] varchar(64) NOT NULL ,
[post_name] varchar(50) NOT NULL ,
[post_sort] int NOT NULL ,
[status] char(1) NOT NULL ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL ,
[remark] varchar(500) NULL DEFAULT '' 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_post]', RESEED, 5)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'岗位信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'岗位信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'post_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'岗位ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'post_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'岗位ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'post_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'post_code')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'岗位编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'post_code'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'岗位编码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'post_code'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'post_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'岗位名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'post_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'岗位名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'post_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'post_sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'显示顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'post_sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'显示顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'post_sort'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_post', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_post'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of sys_post
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_post] ON
GO
INSERT INTO [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'ceo', N'董事长', N'1', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'2', N'ceo', N'董事长', N'1', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'3', N'se', N'项目经理', N'2', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'4', N'hr', N'人力资源', N'3', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
INSERT INTO [dbo].[sys_post] ([post_id], [post_code], [post_name], [post_sort], [status], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'5', N'user', N'普通员工', N'4', N'0', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-03-16 11:33:00.000', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_post] OFF
GO

-- ----------------------------
-- Table structure for sys_role
-- ----------------------------
DROP TABLE [dbo].[sys_role]
GO
CREATE TABLE [dbo].[sys_role] (
[role_id] int NOT NULL IDENTITY(1,1) ,
[role_name] varchar(30) NOT NULL ,
[role_key] varchar(100) NOT NULL ,
[role_sort] int NOT NULL ,
[data_scope] char(1) NULL DEFAULT ('1') ,
[status] char(1) NOT NULL ,
[del_flag] char(1) NULL DEFAULT ('0') ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL ,
[remark] varchar(500) NULL DEFAULT '' 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_role]', RESEED, 2)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'role_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'role_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'role_key')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色权限字符串'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_key'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色权限字符串'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_key'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'role_sort')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'显示顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_sort'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'显示顺序'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'role_sort'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'data_scope')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'数据范围（1：全部数据权限 2：自定数据权限）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'data_scope'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'数据范围（1：全部数据权限 2：自定数据权限）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'data_scope'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'del_flag')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'删除标志（0代表存在 2代表删除）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'del_flag'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'删除标志（0代表存在 2代表删除）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'del_flag'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of sys_role
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_role] ON
GO
INSERT INTO [dbo].[sys_role] ([role_id], [role_name], [role_key], [role_sort], [data_scope], [status], [del_flag], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'管理员', N'admin', N'1', N'2', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'admin', N'2018-09-26 16:14:31.000', N'管理员')
GO
GO
INSERT INTO [dbo].[sys_role] ([role_id], [role_name], [role_key], [role_sort], [data_scope], [status], [del_flag], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'2', N'普通角色', N'common', N'2', N'2', N'0', N'0', N'admin', N'2018-03-16 11:33:00.000', N'admin', N'2018-09-28 17:00:54.000', N'普通角色')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_role] OFF
GO

-- ----------------------------
-- Table structure for sys_role_dept
-- ----------------------------
DROP TABLE [dbo].[sys_role_dept]
GO
CREATE TABLE [dbo].[sys_role_dept] (
[role_id] int NOT NULL ,
[dept_id] int NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role_dept', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色和部门关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_dept'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色和部门关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_dept'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role_dept', 
'COLUMN', N'role_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_dept'
, @level2type = 'COLUMN', @level2name = N'role_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_dept'
, @level2type = 'COLUMN', @level2name = N'role_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role_dept', 
'COLUMN', N'dept_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_dept'
, @level2type = 'COLUMN', @level2name = N'dept_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_dept'
, @level2type = 'COLUMN', @level2name = N'dept_id'
GO

-- ----------------------------
-- Records of sys_role_dept
-- ----------------------------
INSERT INTO [dbo].[sys_role_dept] ([role_id], [dept_id]) VALUES (N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_role_dept] ([role_id], [dept_id]) VALUES (N'1', N'2')
GO
GO
INSERT INTO [dbo].[sys_role_dept] ([role_id], [dept_id]) VALUES (N'1', N'3')
GO
GO

-- ----------------------------
-- Table structure for sys_role_menu
-- ----------------------------
DROP TABLE [dbo].[sys_role_menu]
GO
CREATE TABLE [dbo].[sys_role_menu] (
[role_id] int NOT NULL ,
[menu_id] int NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role_menu', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色和菜单关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色和菜单关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role_menu', 
'COLUMN', N'role_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'role_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'role_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_role_menu', 
'COLUMN', N'menu_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'menu_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'菜单ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_role_menu'
, @level2type = 'COLUMN', @level2name = N'menu_id'
GO

-- ----------------------------
-- Records of sys_role_menu
-- ----------------------------
INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'2')
GO
GO
INSERT INTO [dbo].[sys_role_menu] ([role_id], [menu_id]) VALUES (N'1', N'3')
GO
GO

-- ----------------------------
-- Table structure for sys_user
-- ----------------------------
DROP TABLE [dbo].[sys_user]
GO
CREATE TABLE [dbo].[sys_user] (
[user_id] int NOT NULL IDENTITY(1,1) ,
[dept_id] int NULL DEFAULT NULL ,
[login_name] varchar(30) NOT NULL ,
[user_name] varchar(30) NOT NULL ,
[user_type] varchar(2) NULL DEFAULT ('00') ,
[email] varchar(50) NULL DEFAULT '' ,
[phonenumber] varchar(11) NULL DEFAULT '' ,
[sex] char(1) NULL DEFAULT ('0') ,
[avatar] varchar(100) NULL DEFAULT '' ,
[password] varchar(50) NULL DEFAULT '' ,
[salt] varchar(20) NULL DEFAULT '' ,
[status] char(1) NULL DEFAULT ('0') ,
[del_flag] char(1) NULL DEFAULT ('0') ,
[login_ip] varchar(20) NULL DEFAULT '' ,
[login_date] datetime NULL DEFAULT NULL ,
[create_by] varchar(64) NULL DEFAULT '' ,
[create_time] datetime NULL DEFAULT NULL ,
[update_by] varchar(64) NULL DEFAULT '' ,
[update_time] datetime NULL DEFAULT NULL ,
[remark] varchar(500) NULL DEFAULT '' 
)


GO
DBCC CHECKIDENT(N'[dbo].[sys_user]', RESEED, 2)
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户信息表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'user_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'user_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'user_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'dept_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'dept_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'dept_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'login_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'login_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'login_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'user_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'user_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户昵称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'user_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'user_type')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户类型（00系统用户）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'user_type'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户类型（00系统用户）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'user_type'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'email')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'email'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户邮箱'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'email'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'phonenumber')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'phonenumber'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'手机号码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'phonenumber'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'sex')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户性别（0男 1女 2未知）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'sex'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户性别（0男 1女 2未知）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'sex'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'avatar')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'头像路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'avatar'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'头像路径'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'avatar'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'password')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'password'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'密码'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'password'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'salt')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'盐加密'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'salt'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'盐加密'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'salt'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'帐号状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'帐号状态（0正常 1停用）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'del_flag')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'删除标志（0代表存在 2代表删除）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'del_flag'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'删除标志（0代表存在 2代表删除）'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'del_flag'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'login_ip')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后登陆IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'login_ip'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后登陆IP'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'login_ip'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'login_date')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'最后登陆时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'login_date'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'最后登陆时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'login_date'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'create_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'create_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'create_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'create_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'create_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'create_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'update_by')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'update_by'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新者'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'update_by'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'update_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'update_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'更新时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'update_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user', 
'COLUMN', N'remark')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'remark'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'备注'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user'
, @level2type = 'COLUMN', @level2name = N'remark'
GO

-- ----------------------------
-- Records of sys_user
-- ----------------------------
SET IDENTITY_INSERT [dbo].[sys_user] ON
GO
INSERT INTO [dbo].[sys_user] ([user_id], [dept_id], [login_name], [user_name], [user_type], [email], [phonenumber], [sex], [avatar], [password], [salt], [status], [del_flag], [login_ip], [login_date], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'1', N'4', N'admin', N'若依', N'00', N'ry@163.com', N'15888888888', N'0', N'0001.jpg', N'f75500dc1c4b2282cbd0ffd3494f765a', N'96a357', N'0', N'0', N'192.168.10.20', N'2018-10-09 17:04:26.853', N'admin', N'2018-03-16 11:33:00.000', N'ry', N'2018-10-09 17:04:26.853', N'管理员')
GO
GO
INSERT INTO [dbo].[sys_user] ([user_id], [dept_id], [login_name], [user_name], [user_type], [email], [phonenumber], [sex], [avatar], [password], [salt], [status], [del_flag], [login_ip], [login_date], [create_by], [create_time], [update_by], [update_time], [remark]) VALUES (N'2', N'9', N'manage', N'测试员', N'00', N'manage_jin@163.com', N'13540897890', N'0', N'', N'8b75bdbd9e2f64657e1b7da71c8c810b', N'c08c0b', N'0', N'0', N'', null, N'admin', N'2018-10-09 10:34:43.497', N'admin', N'2018-10-09 10:38:16.360', N'')
GO
GO
SET IDENTITY_INSERT [dbo].[sys_user] OFF
GO

-- ----------------------------
-- Table structure for sys_user_online
-- ----------------------------
DROP TABLE [dbo].[sys_user_online]
GO
CREATE TABLE [dbo].[sys_user_online] (
[sessionId] varchar(50) NOT NULL DEFAULT '' ,
[login_name] varchar(50) NULL DEFAULT '' ,
[dept_name] varchar(50) NULL DEFAULT '' ,
[ipaddr] varchar(50) NULL DEFAULT '' ,
[login_location] varchar(255) NULL DEFAULT '' ,
[browser] varchar(50) NULL DEFAULT '' ,
[os] varchar(50) NULL DEFAULT '' ,
[status] varchar(10) NULL DEFAULT '' ,
[start_timestamp] datetime NULL DEFAULT NULL ,
[last_access_time] datetime NULL DEFAULT NULL ,
[expire_time] int NULL DEFAULT ((0)) 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'在线用户记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'在线用户记录'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'sessionId')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户会话id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'sessionId'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户会话id'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'sessionId'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'login_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'login_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录账号'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'login_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'dept_name')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'部门名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'dept_name'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'部门名称'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'dept_name'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'ipaddr')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'ipaddr'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录IP地址'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'ipaddr'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'login_location')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'登录地点'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'login_location'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'登录地点'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'login_location'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'browser')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'浏览器类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'browser'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'浏览器类型'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'browser'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'os')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'操作系统'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'os'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'操作系统'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'os'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'status')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'在线状态on_line在线off_line离线'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'status'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'在线状态on_line在线off_line离线'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'status'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'start_timestamp')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'session创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'start_timestamp'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'session创建时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'start_timestamp'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'last_access_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'session最后访问时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'last_access_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'session最后访问时间'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'last_access_time'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_online', 
'COLUMN', N'expire_time')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'超时时间，单位为分钟'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'expire_time'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'超时时间，单位为分钟'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_online'
, @level2type = 'COLUMN', @level2name = N'expire_time'
GO

-- ----------------------------
-- Records of sys_user_online
-- ----------------------------
INSERT INTO [dbo].[sys_user_online] ([sessionId], [login_name], [dept_name], [ipaddr], [login_location], [browser], [os], [status], [start_timestamp], [last_access_time], [expire_time]) VALUES (N'81c4cde4-02db-4b12-8f78-13fafc01c576', N'admin', N'研发部门', N'127.0.0.1', N'XX XX', N'Chrome', N'Windows 10', N'off_line', N'2018-10-09 16:45:25.473', N'2018-10-09 17:00:27.497', N'1800000')
GO
GO
INSERT INTO [dbo].[sys_user_online] ([sessionId], [login_name], [dept_name], [ipaddr], [login_location], [browser], [os], [status], [start_timestamp], [last_access_time], [expire_time]) VALUES (N'ef40dae7-8a27-4344-a353-1fcb0ef0095f', N'admin', N'研发部门', N'192.168.10.20', N'XX XX', N'Chrome', N'Windows 10', N'on_line', N'2018-10-09 17:04:21.427', N'2018-10-09 17:05:32.290', N'1800000')
GO
GO

-- ----------------------------
-- Table structure for sys_user_post
-- ----------------------------
DROP TABLE [dbo].[sys_user_post]
GO
CREATE TABLE [dbo].[sys_user_post] (
[user_id] varchar(64) NOT NULL ,
[post_id] varchar(64) NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_post', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户与岗位关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_post'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户与岗位关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_post'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_post', 
'COLUMN', N'user_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_post'
, @level2type = 'COLUMN', @level2name = N'user_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_post'
, @level2type = 'COLUMN', @level2name = N'user_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_post', 
'COLUMN', N'post_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'岗位ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_post'
, @level2type = 'COLUMN', @level2name = N'post_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'岗位ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_post'
, @level2type = 'COLUMN', @level2name = N'post_id'
GO

-- ----------------------------
-- Records of sys_user_post
-- ----------------------------
INSERT INTO [dbo].[sys_user_post] ([user_id], [post_id]) VALUES (N'2', N'1')
GO
GO

-- ----------------------------
-- Table structure for sys_user_role
-- ----------------------------
DROP TABLE [dbo].[sys_user_role]
GO
CREATE TABLE [dbo].[sys_user_role] (
[user_id] int NOT NULL ,
[role_id] int NOT NULL 
)


GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_role', 
NULL, NULL)) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户和角色关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户和角色关联表'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_role', 
'COLUMN', N'user_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'user_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'用户ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'user_id'
GO
IF ((SELECT COUNT(*) from fn_listextendedproperty('MS_Description', 
'SCHEMA', N'dbo', 
'TABLE', N'sys_user_role', 
'COLUMN', N'role_id')) > 0) 
EXEC sp_updateextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'role_id'
ELSE
EXEC sp_addextendedproperty @name = N'MS_Description', @value = N'角色ID'
, @level0type = 'SCHEMA', @level0name = N'dbo'
, @level1type = 'TABLE', @level1name = N'sys_user_role'
, @level2type = 'COLUMN', @level2name = N'role_id'
GO

-- ----------------------------
-- Records of sys_user_role
-- ----------------------------
INSERT INTO [dbo].[sys_user_role] ([user_id], [role_id]) VALUES (N'1', N'1')
GO
GO
INSERT INTO [dbo].[sys_user_role] ([user_id], [role_id]) VALUES (N'2', N'2')
GO
GO

-- ----------------------------
-- Indexes structure for table sys_config
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_config
-- ----------------------------
ALTER TABLE [dbo].[sys_config] ADD PRIMARY KEY NONCLUSTERED ([config_id])
GO

-- ----------------------------
-- Indexes structure for table sys_dept
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_dept
-- ----------------------------
ALTER TABLE [dbo].[sys_dept] ADD PRIMARY KEY NONCLUSTERED ([dept_id])
GO

-- ----------------------------
-- Indexes structure for table sys_dict_data
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_dict_data
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_data] ADD PRIMARY KEY NONCLUSTERED ([dict_code])
GO

-- ----------------------------
-- Indexes structure for table sys_dict_type
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_dict_type
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_type] ADD PRIMARY KEY NONCLUSTERED ([dict_id])
GO

-- ----------------------------
-- Uniques structure for table sys_dict_type
-- ----------------------------
ALTER TABLE [dbo].[sys_dict_type] ADD UNIQUE ([dict_type] ASC)
GO

-- ----------------------------
-- Indexes structure for table sys_job
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_job
-- ----------------------------
ALTER TABLE [dbo].[sys_job] ADD PRIMARY KEY NONCLUSTERED ([job_id], [job_name], [job_group])
GO

-- ----------------------------
-- Indexes structure for table sys_job_log
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_job_log
-- ----------------------------
ALTER TABLE [dbo].[sys_job_log] ADD PRIMARY KEY NONCLUSTERED ([job_log_id])
GO

-- ----------------------------
-- Indexes structure for table sys_logininfor
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_logininfor
-- ----------------------------
ALTER TABLE [dbo].[sys_logininfor] ADD PRIMARY KEY NONCLUSTERED ([info_id])
GO

-- ----------------------------
-- Indexes structure for table sys_menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_menu] ADD PRIMARY KEY NONCLUSTERED ([menu_id])
GO

-- ----------------------------
-- Indexes structure for table sys_notice
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_notice
-- ----------------------------
ALTER TABLE [dbo].[sys_notice] ADD PRIMARY KEY NONCLUSTERED ([notice_id])
GO

-- ----------------------------
-- Indexes structure for table sys_oper_log
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_oper_log
-- ----------------------------
ALTER TABLE [dbo].[sys_oper_log] ADD PRIMARY KEY NONCLUSTERED ([oper_id])
GO

-- ----------------------------
-- Indexes structure for table sys_post
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_post
-- ----------------------------
ALTER TABLE [dbo].[sys_post] ADD PRIMARY KEY NONCLUSTERED ([post_id])
GO

-- ----------------------------
-- Indexes structure for table sys_role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_role
-- ----------------------------
ALTER TABLE [dbo].[sys_role] ADD PRIMARY KEY NONCLUSTERED ([role_id])
GO

-- ----------------------------
-- Indexes structure for table sys_role_dept
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_role_dept
-- ----------------------------
ALTER TABLE [dbo].[sys_role_dept] ADD PRIMARY KEY NONCLUSTERED ([role_id], [dept_id])
GO

-- ----------------------------
-- Indexes structure for table sys_role_menu
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_role_menu
-- ----------------------------
ALTER TABLE [dbo].[sys_role_menu] ADD PRIMARY KEY NONCLUSTERED ([role_id], [menu_id])
GO

-- ----------------------------
-- Indexes structure for table sys_user
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user
-- ----------------------------
ALTER TABLE [dbo].[sys_user] ADD PRIMARY KEY NONCLUSTERED ([user_id])
GO

-- ----------------------------
-- Indexes structure for table sys_user_online
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user_online
-- ----------------------------
ALTER TABLE [dbo].[sys_user_online] ADD PRIMARY KEY NONCLUSTERED ([sessionId])
GO

-- ----------------------------
-- Indexes structure for table sys_user_post
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user_post
-- ----------------------------
ALTER TABLE [dbo].[sys_user_post] ADD PRIMARY KEY NONCLUSTERED ([user_id], [post_id])
GO

-- ----------------------------
-- Indexes structure for table sys_user_role
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table sys_user_role
-- ----------------------------
ALTER TABLE [dbo].[sys_user_role] ADD PRIMARY KEY NONCLUSTERED ([user_id], [role_id])
GO
