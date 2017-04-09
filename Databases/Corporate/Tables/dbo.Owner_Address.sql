CREATE TABLE [dbo].[Owner_Address]
(
[OADR_ID] [smallint] NOT NULL,
[OWN_ID] [smallint] NOT NULL,
[OADR_Address] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[OADR_City] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[OADR_County] [varchar] (60) COLLATE Latin1_General_BIN NULL,
[OADR_State] [varchar] (2) COLLATE Latin1_General_BIN NOT NULL,
[OADR_Country] [varchar] (60) COLLATE Latin1_General_BIN NULL CONSTRAINT [DF__Owner_Add__OADR___1FCDBCEB] DEFAULT ('USA'),
[OADR_Zip] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[OADR_Phone] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Owner_Address] ADD CONSTRAINT [PK_Owner_Address] PRIMARY KEY NONCLUSTERED  ([OADR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [OWNS_ADDRESS_FK] ON [dbo].[Owner_Address] ([OWN_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Owner_Address] ADD CONSTRAINT [FK_Owner_Address_Owns_Address_Owner] FOREIGN KEY ([OWN_ID]) REFERENCES [dbo].[Owner] ([OWN_ID])
GO
GRANT SELECT ON  [dbo].[Owner_Address] TO [SEIS732_Team_21_Corporate_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This represents the address used by an owner for one or more independent dealerships owned by that owner.', 'SCHEMA', N'dbo', 'TABLE', N'Owner_Address', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'The street address of an owner', 'SCHEMA', N'dbo', 'TABLE', N'Owner_Address', 'COLUMN', N'OADR_Address'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The city address of an owner', 'SCHEMA', N'dbo', 'TABLE', N'Owner_Address', 'COLUMN', N'OADR_City'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The country address of an owner', 'SCHEMA', N'dbo', 'TABLE', N'Owner_Address', 'COLUMN', N'OADR_Country'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The country address of an owner', 'SCHEMA', N'dbo', 'TABLE', N'Owner_Address', 'COLUMN', N'OADR_County'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The buisness phone for an owner', 'SCHEMA', N'dbo', 'TABLE', N'Owner_Address', 'COLUMN', N'OADR_Phone'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The state address of an owner', 'SCHEMA', N'dbo', 'TABLE', N'Owner_Address', 'COLUMN', N'OADR_State'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The postal zip code for an owner', 'SCHEMA', N'dbo', 'TABLE', N'Owner_Address', 'COLUMN', N'OADR_Zip'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Uniquely identifies an owner of an independent dealership', 'SCHEMA', N'dbo', 'TABLE', N'Owner_Address', 'COLUMN', N'OWN_ID'
GO
