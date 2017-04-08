CREATE TABLE [dbo].[SALES_ORG]
(
[SORG_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[SORG_Zone_ID] [smallint] NOT NULL,
[SORG_Zone_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SORG_Zone_Manager_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SORG_Zone_Key] [smallint] NOT NULL,
[SORG_Domain_ID] [smallint] NOT NULL,
[SORG_Domain_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SORG_Domain_Manager_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SORG_Region_ID] [smallint] NOT NULL,
[SORG_Region_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SORG_Region_Manager_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SORG_Region_Key] [smallint] NOT NULL,
[SORG_Full_Name] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[SALES_ORG] ADD CONSTRAINT [PK_SALES_ORG] PRIMARY KEY CLUSTERED  ([SORG_Key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'the sales organization that the dealership that sold th vehicle belongs to', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'Sales Domain Production Key', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Domain_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Sales Domain Manager Full Name (First, Middle, Last)
or "<No Domain Manager>"', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Domain_Manager_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Sales Domain Name', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Domain_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'concatenation of the names = [Region Name]-(Zone Name)/Domain Name
For example:
"[Region_14]-(Zone_28)/Domain_82"
(no quotes in the value but other punctuation is literal)', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Full_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'sales org Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Sales Region Production Key', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Region_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'SK for Region Level', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Region_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Sales Region Manager Full Name (First, Middle, Last)
or "<No Region Manager>"', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Region_Manager_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Sales Region Name', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Region_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Sales Zone Production Key', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Zone_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'SK for Zone Level', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Zone_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Sales Zone Manager Full Name (First, Middle, Last)', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Zone_Manager_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Sales Zone Name', 'SCHEMA', N'dbo', 'TABLE', N'SALES_ORG', 'COLUMN', N'SORG_Zone_Name'
GO
