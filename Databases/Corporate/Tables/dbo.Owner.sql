CREATE TABLE [dbo].[Owner]
(
[OWN_ID] [smallint] NOT NULL,
[OWN_First] [varchar] (100) COLLATE Latin1_General_BIN NOT NULL,
[OWN_Last] [varchar] (100) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Owner] ADD CONSTRAINT [PK_Owner] PRIMARY KEY NONCLUSTERED  ([OWN_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a company or individual that owns (and is therefore reponsible for managing) at least one independent dealership.', 'SCHEMA', N'dbo', 'TABLE', N'Owner', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'The first name of an owner', 'SCHEMA', N'dbo', 'TABLE', N'Owner', 'COLUMN', N'OWN_First'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Uniquely identifies an owner of an independent dealership', 'SCHEMA', N'dbo', 'TABLE', N'Owner', 'COLUMN', N'OWN_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'THe last name of an owner', 'SCHEMA', N'dbo', 'TABLE', N'Owner', 'COLUMN', N'OWN_Last'
GO
