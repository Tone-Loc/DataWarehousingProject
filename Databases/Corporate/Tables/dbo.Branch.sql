CREATE TABLE [dbo].[Branch]
(
[BR_ID] [smallint] NOT NULL,
[DEP_Code] [varchar] (10) COLLATE Latin1_General_BIN NULL,
[BR_Address] [varchar] (200) COLLATE Latin1_General_BIN NOT NULL,
[BR_City] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[BR_County] [varchar] (60) COLLATE Latin1_General_BIN NULL,
[BR_State] [varchar] (2) COLLATE Latin1_General_BIN NOT NULL,
[BR_Country] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[BR_Zip] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[BR_Phone] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL,
[BR_Extension] [varchar] (10) COLLATE Latin1_General_BIN NULL,
[BR_Type] [varchar] (1) COLLATE Latin1_General_BIN NULL CONSTRAINT [DF__Branch__BR_Type__108B795B] DEFAULT ('D')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Branch] ADD CONSTRAINT [CKC_BR_Type_Branch] CHECK (([BR_Type] IS NULL OR ([BR_Type]='W' OR [BR_Type]='C' OR [BR_Type]='D' OR [BR_Type]='P') AND [BR_Type]=upper([BR_Type])))
GO
ALTER TABLE [dbo].[Branch] ADD CONSTRAINT [PK_Branch] PRIMARY KEY NONCLUSTERED  ([BR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DEPT_HAS_BRANCH_FK] ON [dbo].[Branch] ([DEP_Code]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Branch] ADD CONSTRAINT [FK_Branch_Dept_Has_Branch_Department] FOREIGN KEY ([DEP_Code]) REFERENCES [dbo].[Department] ([DEP_Code])
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a branch office', 'SCHEMA', N'dbo', 'TABLE', N'Branch', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'The street address including suite number for the branch''s mailing address.', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_Address'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The name of the city for the branch''s mailing address.', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_City'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the country for the branch''s mailing address.', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_Country'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the county for the branch''s mailing address.', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_County'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the internal phone extension used to dial this branch''s main switchboard.', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_Extension'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Uniquely identifies a branch.', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'External phone number for the branch.', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_Phone'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The state for the branch''s mailing address.', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_State'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is one of the following values:
''P'' for Plant
''C'' for Corporate Dealership, 
''W'' for Warehouse,
or ''D'' for "any other kind of " Department ', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_Type'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The postal zipcode for the branch''s mailing address.', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'BR_Zip'
GO
EXEC sp_addextendedproperty N'MS_Description', 'ID for the department', 'SCHEMA', N'dbo', 'TABLE', N'Branch', 'COLUMN', N'DEP_Code'
GO
