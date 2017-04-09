CREATE TABLE [dbo].[Independent]
(
[DLR_ID] [smallint] NOT NULL,
[OADR_ID] [smallint] NOT NULL,
[WEB_ID] [smallint] NOT NULL,
[DLR_Since] [datetime] NOT NULL,
[DLR_Email] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Code] [varchar] (15) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Type] [varchar] (1) COLLATE Latin1_General_BIN NOT NULL CONSTRAINT [DF__Independe__DLR_T__1A14E395] DEFAULT ('C'),
[ID_Name] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[ID_Renewal_Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Independent] ADD CONSTRAINT [CKC_DLR_Type_Independent] CHECK ((([DLR_Type]='I' OR [DLR_Type]='C') AND [DLR_Type]=upper([DLR_Type])))
GO
ALTER TABLE [dbo].[Independent] ADD CONSTRAINT [PK_Independent] PRIMARY KEY CLUSTERED  ([DLR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [HAS_ADDRESS_FK] ON [dbo].[Independent] ([OADR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [HAS_WEBSITE_FK] ON [dbo].[Independent] ([WEB_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Independent] ADD CONSTRAINT [FK_Independent_Has_Address_Owner_Address] FOREIGN KEY ([OADR_ID]) REFERENCES [dbo].[Owner_Address] ([OADR_ID])
GO
ALTER TABLE [dbo].[Independent] ADD CONSTRAINT [FK_Independent_Has_Website_Website] FOREIGN KEY ([WEB_ID]) REFERENCES [dbo].[Website] ([WEB_ID])
GO
GRANT SELECT ON  [dbo].[Independent] TO [SEIS732_Team_21_Corporate_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is an independently owned and operated Dealership.', 'SCHEMA', N'dbo', 'TABLE', N'Independent', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the corporate identifier (unique) for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Independent', 'COLUMN', N'DLR_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Email address for this dealership', 'SCHEMA', N'dbo', 'TABLE', N'Independent', 'COLUMN', N'DLR_Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies the Dealership.', 'SCHEMA', N'dbo', 'TABLE', N'Independent', 'COLUMN', N'DLR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Date that this Dealership began selling RRV''s.', 'SCHEMA', N'dbo', 'TABLE', N'Independent', 'COLUMN', N'DLR_Since'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is "C" for Corporate, "I" for Independent', 'SCHEMA', N'dbo', 'TABLE', N'Independent', 'COLUMN', N'DLR_Type'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This serves as a candidate key for the independents.', 'SCHEMA', N'dbo', 'TABLE', N'Independent', 'COLUMN', N'ID_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The date of the next renewal contract for this dealership', 'SCHEMA', N'dbo', 'TABLE', N'Independent', 'COLUMN', N'ID_Renewal_Date'
GO
