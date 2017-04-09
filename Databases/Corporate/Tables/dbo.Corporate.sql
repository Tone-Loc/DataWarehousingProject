CREATE TABLE [dbo].[Corporate]
(
[DLR_ID] [smallint] NOT NULL,
[BR_ID] [smallint] NOT NULL,
[WEB_ID] [smallint] NOT NULL,
[DLR_Since] [datetime] NOT NULL,
[DLR_Email] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Code] [varchar] (15) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Type] [varchar] (1) COLLATE Latin1_General_BIN NOT NULL CONSTRAINT [DF__Corporate__DLR_T__145C0A3F] DEFAULT ('C'),
[CD_Name] [varchar] (200) COLLATE Latin1_General_BIN NOT NULL,
[CD_MGR_Name] [varchar] (200) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Corporate] ADD CONSTRAINT [CKC_DLR_Type_Corporate] CHECK ((([DLR_Type]='I' OR [DLR_Type]='C') AND [DLR_Type]=upper([DLR_Type])))
GO
ALTER TABLE [dbo].[Corporate] ADD CONSTRAINT [PK_Corporate] PRIMARY KEY CLUSTERED  ([DLR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MANAGES_FK] ON [dbo].[Corporate] ([BR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [HAS_WEBSITE2_FK] ON [dbo].[Corporate] ([WEB_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Corporate] ADD CONSTRAINT [FK_Corporate_Has_Website2_Website] FOREIGN KEY ([WEB_ID]) REFERENCES [dbo].[Website] ([WEB_ID])
GO
ALTER TABLE [dbo].[Corporate] ADD CONSTRAINT [FK_Corporate_Manages_Branch] FOREIGN KEY ([BR_ID]) REFERENCES [dbo].[Branch] ([BR_ID])
GO
GRANT SELECT ON  [dbo].[Corporate] TO [SEIS732_Team_21_Corporate_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This represents a corporately owned and operated dealership.', 'SCHEMA', N'dbo', 'TABLE', N'Corporate', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'Uniquely identifies a branch.', 'SCHEMA', N'dbo', 'TABLE', N'Corporate', 'COLUMN', N'BR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name of a person who is responsible for managing this corporate dealership.

name is of the format: Last,First', 'SCHEMA', N'dbo', 'TABLE', N'Corporate', 'COLUMN', N'CD_MGR_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This serves as a candidate key for the Corporate Dealers', 'SCHEMA', N'dbo', 'TABLE', N'Corporate', 'COLUMN', N'CD_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the corporate identifier (unique) for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Corporate', 'COLUMN', N'DLR_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Email address for this dealership', 'SCHEMA', N'dbo', 'TABLE', N'Corporate', 'COLUMN', N'DLR_Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies the Dealership.', 'SCHEMA', N'dbo', 'TABLE', N'Corporate', 'COLUMN', N'DLR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Date that this Dealership began selling RRV''s.', 'SCHEMA', N'dbo', 'TABLE', N'Corporate', 'COLUMN', N'DLR_Since'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is "C" for Corporate, "I" for Independent', 'SCHEMA', N'dbo', 'TABLE', N'Corporate', 'COLUMN', N'DLR_Type'
GO
