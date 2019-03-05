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

Date: 2018-10-09 17:09:12
*/


-- ----------------------------
-- Table structure for qrtz_blob_triggers
-- ----------------------------
DROP TABLE [dbo].[qrtz_blob_triggers]
GO
CREATE TABLE [dbo].[qrtz_blob_triggers] (
[sched_name] varchar(120) NOT NULL ,
[trigger_name] varchar(200) NOT NULL ,
[trigger_group] varchar(200) NOT NULL ,
[blob_data] binary(1) NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_calendars
-- ----------------------------
DROP TABLE [dbo].[qrtz_calendars]
GO
CREATE TABLE [dbo].[qrtz_calendars] (
[sched_name] varchar(120) NOT NULL ,
[calendar_name] varchar(200) NOT NULL ,
[calendar] binary(1) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_cron_triggers
-- ----------------------------
DROP TABLE [dbo].[qrtz_cron_triggers]
GO
CREATE TABLE [dbo].[qrtz_cron_triggers] (
[sched_name] varchar(120) NOT NULL ,
[trigger_name] varchar(200) NOT NULL ,
[trigger_group] varchar(200) NOT NULL ,
[cron_expression] varchar(200) NOT NULL ,
[time_zone_id] varchar(80) NULL DEFAULT NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_fired_triggers
-- ----------------------------
DROP TABLE [dbo].[qrtz_fired_triggers]
GO
CREATE TABLE [dbo].[qrtz_fired_triggers] (
[sched_name] varchar(120) NOT NULL ,
[entry_id] varchar(95) NOT NULL ,
[trigger_name] varchar(200) NOT NULL ,
[trigger_group] varchar(200) NOT NULL ,
[instance_name] varchar(200) NOT NULL ,
[fired_time] bigint NOT NULL ,
[sched_time] bigint NOT NULL ,
[priority] int NOT NULL ,
[state] varchar(16) NOT NULL ,
[job_name] varchar(200) NULL DEFAULT NULL ,
[job_group] varchar(200) NULL DEFAULT NULL ,
[is_nonconcurrent] varchar(1) NULL DEFAULT NULL ,
[requests_recovery] varchar(1) NULL DEFAULT NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_job_details
-- ----------------------------
DROP TABLE [dbo].[qrtz_job_details]
GO
CREATE TABLE [dbo].[qrtz_job_details] (
[sched_name] varchar(120) NOT NULL ,
[job_name] varchar(200) NOT NULL ,
[job_group] varchar(200) NOT NULL ,
[description] varchar(250) NULL DEFAULT NULL ,
[job_class_name] varchar(250) NOT NULL ,
[is_durable] varchar(1) NOT NULL ,
[is_nonconcurrent] varchar(1) NOT NULL ,
[is_update_data] varchar(1) NOT NULL ,
[requests_recovery] varchar(1) NOT NULL ,
[job_data] image NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_locks
-- ----------------------------
DROP TABLE [dbo].[qrtz_locks]
GO
CREATE TABLE [dbo].[qrtz_locks] (
[sched_name] varchar(120) NOT NULL ,
[lock_name] varchar(40) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_paused_trigger_grps
-- ----------------------------
DROP TABLE [dbo].[qrtz_paused_trigger_grps]
GO
CREATE TABLE [dbo].[qrtz_paused_trigger_grps] (
[sched_name] varchar(120) NOT NULL ,
[trigger_group] varchar(200) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_scheduler_state
-- ----------------------------
DROP TABLE [dbo].[qrtz_scheduler_state]
GO
CREATE TABLE [dbo].[qrtz_scheduler_state] (
[sched_name] varchar(120) NOT NULL ,
[instance_name] varchar(200) NOT NULL ,
[last_checkin_time] bigint NOT NULL ,
[checkin_interval] bigint NOT NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_simple_triggers
-- ----------------------------
DROP TABLE [dbo].[qrtz_simple_triggers]
GO
CREATE TABLE [dbo].[qrtz_simple_triggers] (
[sched_name] varchar(120) NOT NULL ,
[trigger_name] varchar(200) NOT NULL ,
[trigger_group] varchar(200) NOT NULL ,
[repeat_count] bigint NOT NULL ,
[repeat_interval] bigint NOT NULL ,
[times_triggered] bigint NOT NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_simprop_triggers
-- ----------------------------
DROP TABLE [dbo].[qrtz_simprop_triggers]
GO
CREATE TABLE [dbo].[qrtz_simprop_triggers] (
[sched_name] varchar(120) NOT NULL ,
[trigger_name] varchar(200) NOT NULL ,
[trigger_group] varchar(200) NOT NULL ,
[str_prop_1] varchar(512) NULL DEFAULT NULL ,
[str_prop_2] varchar(512) NULL DEFAULT NULL ,
[str_prop_3] varchar(512) NULL DEFAULT NULL ,
[int_prop_1] int NULL DEFAULT NULL ,
[int_prop_2] int NULL DEFAULT NULL ,
[long_prop_1] bigint NULL DEFAULT NULL ,
[long_prop_2] bigint NULL DEFAULT NULL ,
[dec_prop_1] decimal(13,4) NULL DEFAULT NULL ,
[dec_prop_2] decimal(13,4) NULL DEFAULT NULL ,
[bool_prop_1] varchar(1) NULL DEFAULT NULL ,
[bool_prop_2] varchar(1) NULL DEFAULT NULL 
)


GO

-- ----------------------------
-- Table structure for qrtz_triggers
-- ----------------------------
DROP TABLE [dbo].[qrtz_triggers]
GO
CREATE TABLE [dbo].[qrtz_triggers] (
[sched_name] varchar(120) NOT NULL ,
[trigger_name] varchar(200) NOT NULL ,
[trigger_group] varchar(200) NOT NULL ,
[job_name] varchar(200) NOT NULL ,
[job_group] varchar(200) NOT NULL ,
[description] varchar(250) NULL DEFAULT NULL ,
[next_fire_time] bigint NULL DEFAULT NULL ,
[prev_fire_time] bigint NULL DEFAULT NULL ,
[priority] int NULL DEFAULT NULL ,
[trigger_state] varchar(16) NOT NULL ,
[trigger_type] varchar(8) NOT NULL ,
[start_time] bigint NOT NULL ,
[end_time] bigint NULL DEFAULT NULL ,
[calendar_name] varchar(200) NULL DEFAULT NULL ,
[misfire_instr] smallint NULL DEFAULT NULL ,
[job_data] image NULL 
)


GO

-- ----------------------------
-- Indexes structure for table qrtz_blob_triggers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_blob_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_blob_triggers] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [trigger_name], [trigger_group])
GO

-- ----------------------------
-- Indexes structure for table qrtz_calendars
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_calendars
-- ----------------------------
ALTER TABLE [dbo].[qrtz_calendars] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [calendar_name])
GO

-- ----------------------------
-- Indexes structure for table qrtz_cron_triggers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_cron_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_cron_triggers] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [trigger_name], [trigger_group])
GO

-- ----------------------------
-- Indexes structure for table qrtz_fired_triggers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_fired_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_fired_triggers] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [entry_id])
GO

-- ----------------------------
-- Indexes structure for table qrtz_job_details
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_job_details
-- ----------------------------
ALTER TABLE [dbo].[qrtz_job_details] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [job_name], [job_group])
GO

-- ----------------------------
-- Indexes structure for table qrtz_locks
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_locks
-- ----------------------------
ALTER TABLE [dbo].[qrtz_locks] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [lock_name])
GO

-- ----------------------------
-- Indexes structure for table qrtz_paused_trigger_grps
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_paused_trigger_grps
-- ----------------------------
ALTER TABLE [dbo].[qrtz_paused_trigger_grps] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [trigger_group])
GO

-- ----------------------------
-- Indexes structure for table qrtz_scheduler_state
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_scheduler_state
-- ----------------------------
ALTER TABLE [dbo].[qrtz_scheduler_state] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [instance_name])
GO

-- ----------------------------
-- Indexes structure for table qrtz_simple_triggers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_simple_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_simple_triggers] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [trigger_name], [trigger_group])
GO

-- ----------------------------
-- Indexes structure for table qrtz_simprop_triggers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_simprop_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_simprop_triggers] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [trigger_name], [trigger_group])
GO

-- ----------------------------
-- Indexes structure for table qrtz_triggers
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_triggers] ADD PRIMARY KEY NONCLUSTERED ([sched_name], [trigger_name], [trigger_group])
GO

-- ----------------------------
-- Uniques structure for table qrtz_triggers
-- ----------------------------
ALTER TABLE [dbo].[qrtz_triggers] ADD UNIQUE ([sched_name] ASC, [job_name] ASC, [job_group] ASC)
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[qrtz_triggers]
-- ----------------------------
ALTER TABLE [dbo].[qrtz_triggers] ADD FOREIGN KEY ([sched_name], [job_name], [job_group]) REFERENCES [dbo].[qrtz_job_details] ([sched_name], [job_name], [job_group]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
