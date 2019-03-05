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

Date: 2018-10-09 17:17:30
*/


-- ----------------------------
-- Table structure for QRTZ_BLOB_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_BLOB_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_BLOB_TRIGGERS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[TRIGGER_NAME] nvarchar(150) NOT NULL ,
[TRIGGER_GROUP] nvarchar(150) NOT NULL ,
[BLOB_DATA] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_CALENDARS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_CALENDARS]
GO
CREATE TABLE [dbo].[QRTZ_CALENDARS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[CALENDAR_NAME] nvarchar(200) NOT NULL ,
[CALENDAR] varbinary(MAX) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_CRON_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_CRON_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_CRON_TRIGGERS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[TRIGGER_NAME] nvarchar(150) NOT NULL ,
[TRIGGER_GROUP] nvarchar(150) NOT NULL ,
[CRON_EXPRESSION] nvarchar(120) NOT NULL ,
[TIME_ZONE_ID] nvarchar(80) NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_FIRED_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_FIRED_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_FIRED_TRIGGERS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[ENTRY_ID] nvarchar(140) NOT NULL ,
[TRIGGER_NAME] nvarchar(150) NOT NULL ,
[TRIGGER_GROUP] nvarchar(150) NOT NULL ,
[INSTANCE_NAME] nvarchar(200) NOT NULL ,
[FIRED_TIME] bigint NOT NULL ,
[SCHED_TIME] bigint NOT NULL ,
[PRIORITY] int NOT NULL ,
[STATE] nvarchar(16) NOT NULL ,
[JOB_NAME] nvarchar(150) NULL ,
[JOB_GROUP] nvarchar(150) NULL ,
[IS_NONCONCURRENT] bit NULL ,
[REQUESTS_RECOVERY] bit NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_JOB_DETAILS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_JOB_DETAILS]
GO
CREATE TABLE [dbo].[QRTZ_JOB_DETAILS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[JOB_NAME] nvarchar(150) NOT NULL ,
[JOB_GROUP] nvarchar(150) NOT NULL ,
[DESCRIPTION] nvarchar(250) NULL ,
[JOB_CLASS_NAME] nvarchar(250) NOT NULL ,
[IS_DURABLE] bit NOT NULL ,
[IS_NONCONCURRENT] bit NOT NULL ,
[IS_UPDATE_DATA] bit NOT NULL ,
[REQUESTS_RECOVERY] bit NOT NULL ,
[JOB_DATA] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_LOCKS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_LOCKS]
GO
CREATE TABLE [dbo].[QRTZ_LOCKS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[LOCK_NAME] nvarchar(40) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS]
GO
CREATE TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[TRIGGER_GROUP] nvarchar(150) NOT NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_SCHEDULER_STATE
-- ----------------------------
DROP TABLE [dbo].[QRTZ_SCHEDULER_STATE]
GO
CREATE TABLE [dbo].[QRTZ_SCHEDULER_STATE] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[INSTANCE_NAME] nvarchar(200) NOT NULL ,
[LAST_CHECKIN_TIME] bigint NOT NULL ,
[CHECKIN_INTERVAL] bigint NOT NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[TRIGGER_NAME] nvarchar(150) NOT NULL ,
[TRIGGER_GROUP] nvarchar(150) NOT NULL ,
[REPEAT_COUNT] int NOT NULL ,
[REPEAT_INTERVAL] bigint NOT NULL ,
[TIMES_TRIGGERED] int NOT NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[TRIGGER_NAME] nvarchar(150) NOT NULL ,
[TRIGGER_GROUP] nvarchar(150) NOT NULL ,
[STR_PROP_1] nvarchar(512) NULL ,
[STR_PROP_2] nvarchar(512) NULL ,
[STR_PROP_3] nvarchar(512) NULL ,
[INT_PROP_1] int NULL ,
[INT_PROP_2] int NULL ,
[LONG_PROP_1] bigint NULL ,
[LONG_PROP_2] bigint NULL ,
[DEC_PROP_1] numeric(13,4) NULL ,
[DEC_PROP_2] numeric(13,4) NULL ,
[BOOL_PROP_1] bit NULL ,
[BOOL_PROP_2] bit NULL ,
[TIME_ZONE_ID] nvarchar(80) NULL 
)


GO

-- ----------------------------
-- Table structure for QRTZ_TRIGGERS
-- ----------------------------
DROP TABLE [dbo].[QRTZ_TRIGGERS]
GO
CREATE TABLE [dbo].[QRTZ_TRIGGERS] (
[SCHED_NAME] nvarchar(120) NOT NULL ,
[TRIGGER_NAME] nvarchar(150) NOT NULL ,
[TRIGGER_GROUP] nvarchar(150) NOT NULL ,
[JOB_NAME] nvarchar(150) NOT NULL ,
[JOB_GROUP] nvarchar(150) NOT NULL ,
[DESCRIPTION] nvarchar(250) NULL ,
[NEXT_FIRE_TIME] bigint NULL ,
[PREV_FIRE_TIME] bigint NULL ,
[PRIORITY] int NULL ,
[TRIGGER_STATE] nvarchar(16) NOT NULL ,
[TRIGGER_TYPE] nvarchar(8) NOT NULL ,
[START_TIME] bigint NOT NULL ,
[END_TIME] bigint NULL ,
[CALENDAR_NAME] nvarchar(200) NULL ,
[MISFIRE_INSTR] int NULL ,
[JOB_DATA] varbinary(MAX) NULL 
)


GO

-- ----------------------------
-- Indexes structure for table QRTZ_BLOB_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_BLOB_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_BLOB_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_CALENDARS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_CALENDARS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_CALENDARS] ADD PRIMARY KEY ([SCHED_NAME], [CALENDAR_NAME])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_CRON_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_CRON_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_FIRED_TRIGGERS
-- ----------------------------
CREATE INDEX [IDX_QRTZ_FT_TRIG_INST_NAME] ON [dbo].[QRTZ_FIRED_TRIGGERS]
([SCHED_NAME] ASC, [INSTANCE_NAME] ASC) 
GO
CREATE INDEX [IDX_QRTZ_FT_INST_JOB_REQ_RCVRY] ON [dbo].[QRTZ_FIRED_TRIGGERS]
([SCHED_NAME] ASC, [INSTANCE_NAME] ASC, [REQUESTS_RECOVERY] ASC) 
GO
CREATE INDEX [IDX_QRTZ_FT_J_G] ON [dbo].[QRTZ_FIRED_TRIGGERS]
([SCHED_NAME] ASC, [JOB_NAME] ASC, [JOB_GROUP] ASC) 
GO
CREATE INDEX [IDX_QRTZ_FT_JG] ON [dbo].[QRTZ_FIRED_TRIGGERS]
([SCHED_NAME] ASC, [JOB_GROUP] ASC) 
GO
CREATE INDEX [IDX_QRTZ_FT_T_G] ON [dbo].[QRTZ_FIRED_TRIGGERS]
([SCHED_NAME] ASC, [TRIGGER_NAME] ASC, [TRIGGER_GROUP] ASC) 
GO
CREATE INDEX [IDX_QRTZ_FT_TG] ON [dbo].[QRTZ_FIRED_TRIGGERS]
([SCHED_NAME] ASC, [TRIGGER_GROUP] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table QRTZ_FIRED_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_FIRED_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [ENTRY_ID])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_JOB_DETAILS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_JOB_DETAILS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_JOB_DETAILS] ADD PRIMARY KEY ([SCHED_NAME], [JOB_NAME], [JOB_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_LOCKS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_LOCKS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_LOCKS] ADD PRIMARY KEY ([SCHED_NAME], [LOCK_NAME])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_PAUSED_TRIGGER_GRPS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_PAUSED_TRIGGER_GRPS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_SCHEDULER_STATE
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_SCHEDULER_STATE
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SCHEDULER_STATE] ADD PRIMARY KEY ([SCHED_NAME], [INSTANCE_NAME])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_SIMPLE_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_SIMPLE_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_SIMPROP_TRIGGERS
-- ----------------------------

-- ----------------------------
-- Primary Key structure for table QRTZ_SIMPROP_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Indexes structure for table QRTZ_TRIGGERS
-- ----------------------------
CREATE INDEX [IDX_QRTZ_T_J] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [JOB_NAME] ASC, [JOB_GROUP] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_JG] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [JOB_GROUP] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_C] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [CALENDAR_NAME] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_G] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [TRIGGER_GROUP] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_STATE] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [TRIGGER_STATE] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_N_STATE] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [TRIGGER_NAME] ASC, [TRIGGER_GROUP] ASC, [TRIGGER_STATE] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_N_G_STATE] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [TRIGGER_GROUP] ASC, [TRIGGER_STATE] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_NEXT_FIRE_TIME] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [NEXT_FIRE_TIME] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_NFT_ST] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [TRIGGER_STATE] ASC, [NEXT_FIRE_TIME] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_NFT_MISFIRE] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [MISFIRE_INSTR] ASC, [NEXT_FIRE_TIME] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_NFT_ST_MISFIRE] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [MISFIRE_INSTR] ASC, [NEXT_FIRE_TIME] ASC, [TRIGGER_STATE] ASC) 
GO
CREATE INDEX [IDX_QRTZ_T_NFT_ST_MISFIRE_GRP] ON [dbo].[QRTZ_TRIGGERS]
([SCHED_NAME] ASC, [MISFIRE_INSTR] ASC, [NEXT_FIRE_TIME] ASC, [TRIGGER_GROUP] ASC, [TRIGGER_STATE] ASC) 
GO

-- ----------------------------
-- Primary Key structure for table QRTZ_TRIGGERS
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_TRIGGERS] ADD PRIMARY KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP])
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[QRTZ_CRON_TRIGGERS]
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_CRON_TRIGGERS] ADD FOREIGN KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[QRTZ_SIMPLE_TRIGGERS]
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPLE_TRIGGERS] ADD FOREIGN KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[QRTZ_SIMPROP_TRIGGERS]
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_SIMPROP_TRIGGERS] ADD FOREIGN KEY ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) REFERENCES [dbo].[QRTZ_TRIGGERS] ([SCHED_NAME], [TRIGGER_NAME], [TRIGGER_GROUP]) ON DELETE CASCADE ON UPDATE NO ACTION
GO

-- ----------------------------
-- Foreign Key structure for table [dbo].[QRTZ_TRIGGERS]
-- ----------------------------
ALTER TABLE [dbo].[QRTZ_TRIGGERS] ADD FOREIGN KEY ([SCHED_NAME], [JOB_NAME], [JOB_GROUP]) REFERENCES [dbo].[QRTZ_JOB_DETAILS] ([SCHED_NAME], [JOB_NAME], [JOB_GROUP]) ON DELETE NO ACTION ON UPDATE NO ACTION
GO
