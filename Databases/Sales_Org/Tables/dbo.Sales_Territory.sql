CREATE TABLE [dbo].[Sales_Territory]
(
[ST_ID] [smallint] NOT NULL,
[SA_ID] [smallint] NOT NULL,
[MGR_ID] [smallint] NULL,
[ST_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[ST_Desc] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales_Territory] ADD CONSTRAINT [PK_Sales_Territory] PRIMARY KEY NONCLUSTERED  ([ST_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MANAGES_ST_FK] ON [dbo].[Sales_Territory] ([MGR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SA_HAS_ST_FK] ON [dbo].[Sales_Territory] ([SA_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales_Territory] ADD CONSTRAINT [FK_Sales_Territory_Manages_ST_Sales_Mgr] FOREIGN KEY ([MGR_ID]) REFERENCES [dbo].[Sales_Mgr] ([MGR_ID])
GO
ALTER TABLE [dbo].[Sales_Territory] ADD CONSTRAINT [FK_Sales_Territory_SA_Has_ST_Sales_Area] FOREIGN KEY ([SA_ID]) REFERENCES [dbo].[Sales_Area] ([SA_ID])
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a Sales Territory, it is a grouping of Dealerships', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Territory', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies a sales manager', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Territory', 'COLUMN', N'MGR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies the sales area', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Territory', 'COLUMN', N'SA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a description of the Sales Territory', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Territory', 'COLUMN', N'ST_Desc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies a sales territory', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Territory', 'COLUMN', N'ST_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The name of the sales territory', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Territory', 'COLUMN', N'ST_Name'
GO
