CREATE TABLE [dbo].[Sales_Area]
(
[SA_ID] [smallint] NOT NULL,
[SD_ID] [smallint] NOT NULL,
[MGR_ID] [smallint] NULL,
[SA_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SA_Desc] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales_Area] ADD CONSTRAINT [PK_Sales_Area] PRIMARY KEY NONCLUSTERED  ([SA_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MANAGES_SA_FK] ON [dbo].[Sales_Area] ([MGR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SD_HAS_SA_FK] ON [dbo].[Sales_Area] ([SD_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales_Area] ADD CONSTRAINT [FK_Sales_Area_Manages_SA_Sales_Mgr] FOREIGN KEY ([MGR_ID]) REFERENCES [dbo].[Sales_Mgr] ([MGR_ID])
GO
ALTER TABLE [dbo].[Sales_Area] ADD CONSTRAINT [FK_Sales_Area_SD_Has_SA_Sales_District] FOREIGN KEY ([SD_ID]) REFERENCES [dbo].[Sales_District] ([SD_ID])
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a sales Area it is a grouping of Sales Territories', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Area', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies a sales manager', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Area', 'COLUMN', N'MGR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a description of the Sales Area', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Area', 'COLUMN', N'SA_Desc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies the sales area', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Area', 'COLUMN', N'SA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The name of the sales area', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Area', 'COLUMN', N'SA_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies the sales district', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Area', 'COLUMN', N'SD_ID'
GO
