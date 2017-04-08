CREATE TABLE [dbo].[Sales_Mgr]
(
[MGR_ID] [smallint] NOT NULL,
[MGR_First_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[MGR_Last_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[MGR_Email] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[MGR_Experience] [smallint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sales_Mgr] ADD CONSTRAINT [PK_Sales_Mgr] PRIMARY KEY NONCLUSTERED  ([MGR_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the manager of a Sales District, Sales Area, or Sales Territory.

It is possible for a manager to manage more than one sales unit, even sales units at different levels (but that is not very common)', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Mgr', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'The email address for this manager', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Mgr', 'COLUMN', N'MGR_Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the number of full years that the manager has been managing at some level (district, area, or territorial)', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Mgr', 'COLUMN', N'MGR_Experience'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The first name of a (district, area or territorial) manager in the sales organization', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Mgr', 'COLUMN', N'MGR_First_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies a sales manager', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Mgr', 'COLUMN', N'MGR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The last name of a (district, area or territorial) manager in the sales organization', 'SCHEMA', N'dbo', 'TABLE', N'Sales_Mgr', 'COLUMN', N'MGR_Last_Name'
GO
