CREATE TABLE [dbo].[Sales_District]
(
[SD_ID] [smallint] NOT NULL,
[MGR_ID] [smallint] NULL,
[SD_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SD_Desc] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales_District] ADD CONSTRAINT [PK_Sales_District] PRIMARY KEY NONCLUSTERED  ([SD_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MANAGES_SD_FK] ON [dbo].[Sales_District] ([MGR_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales_District] ADD CONSTRAINT [FK_Sales_District_Manages_SD_Sales_Mgr] FOREIGN KEY ([MGR_ID]) REFERENCES [dbo].[Sales_Mgr] ([MGR_ID])
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a Sales District it is a grouping of Sales Areas', 'SCHEMA', N'dbo', 'TABLE', N'Sales_District', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies a sales manager', 'SCHEMA', N'dbo', 'TABLE', N'Sales_District', 'COLUMN', N'MGR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a description of the Sales District', 'SCHEMA', N'dbo', 'TABLE', N'Sales_District', 'COLUMN', N'SD_Desc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies the sales district', 'SCHEMA', N'dbo', 'TABLE', N'Sales_District', 'COLUMN', N'SD_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The name of the sales district', 'SCHEMA', N'dbo', 'TABLE', N'Sales_District', 'COLUMN', N'SD_Name'
GO
