CREATE TABLE [dbo].[Warehouse]
(
[WH_ID] [smallint] NOT NULL,
[WH_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[WH_Desc] [varchar] (256) COLLATE Latin1_General_BIN NULL,
[WH_Established] [datetime] NOT NULL,
[WH_WorkForce] [smallint] NULL,
[WH_Code] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Warehouse] ADD CONSTRAINT [PK_Warehouse] PRIMARY KEY NONCLUSTERED  ([WH_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a brach office that has storage of RRV''s which are unallocated', 'SCHEMA', N'dbo', 'TABLE', N'Warehouse', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'The warehouse code, a unique value used to identify the warehouse at the enterprise-wide level', 'SCHEMA', N'dbo', 'TABLE', N'Warehouse', 'COLUMN', N'WH_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The description for a warehouse.', 'SCHEMA', N'dbo', 'TABLE', N'Warehouse', 'COLUMN', N'WH_Desc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The date that a warehouse was established', 'SCHEMA', N'dbo', 'TABLE', N'Warehouse', 'COLUMN', N'WH_Established'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID of a warehouse', 'SCHEMA', N'dbo', 'TABLE', N'Warehouse', 'COLUMN', N'WH_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The name for a warehouse', 'SCHEMA', N'dbo', 'TABLE', N'Warehouse', 'COLUMN', N'WH_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The size of the workforce at a warehouse.', 'SCHEMA', N'dbo', 'TABLE', N'Warehouse', 'COLUMN', N'WH_WorkForce'
GO
