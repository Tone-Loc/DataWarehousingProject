CREATE TABLE [dbo].[Department]
(
[DEP_Code] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[DEP_Name] [varchar] (40) COLLATE Latin1_General_BIN NOT NULL,
[DEP_Class] [varchar] (5) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Department] ADD CONSTRAINT [PK_Department] PRIMARY KEY NONCLUSTERED  ([DEP_Code]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a corporate Department', 'SCHEMA', N'dbo', 'TABLE', N'Department', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies the type of department', 'SCHEMA', N'dbo', 'TABLE', N'Department', 'COLUMN', N'DEP_Class'
GO
EXEC sp_addextendedproperty N'MS_Description', 'ID for the department', 'SCHEMA', N'dbo', 'TABLE', N'Department', 'COLUMN', N'DEP_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Candidate Key for the Department', 'SCHEMA', N'dbo', 'TABLE', N'Department', 'COLUMN', N'DEP_Name'
GO
