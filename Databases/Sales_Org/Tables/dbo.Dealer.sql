CREATE TABLE [dbo].[Dealer]
(
[DLR_ID] [smallint] NOT NULL,
[MICSA_ID] [bigint] NOT NULL,
[ST_ID] [smallint] NOT NULL,
[DLR_Zip] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Code] [varchar] (15) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Phone] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Type] [varchar] (1) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dealer] ADD CONSTRAINT [CKC_DLR_Type_Dealer] CHECK ((([DLR_Type]='A' OR [DLR_Type]='B' OR [DLR_Type]='P') AND [DLR_Type]=upper([DLR_Type])))
GO
ALTER TABLE [dbo].[Dealer] ADD CONSTRAINT [PK_Dealer] PRIMARY KEY NONCLUSTERED  ([DLR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DEALER_IN_MSA_FK] ON [dbo].[Dealer] ([MICSA_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DEALER_HAS_ST_FK] ON [dbo].[Dealer] ([ST_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dealer] ADD CONSTRAINT [FK_Dealer_Dealer_Has_ST_Sales_Territory] FOREIGN KEY ([ST_ID]) REFERENCES [dbo].[Sales_Territory] ([ST_ID])
GO
ALTER TABLE [dbo].[Dealer] ADD CONSTRAINT [FK_Dealer_Dealer_In_MSA_Micropolitan_Statistical_Area] FOREIGN KEY ([MICSA_ID]) REFERENCES [dbo].[Micropolitan_Statistical_Area] ([MICSA_ID])
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a corporate or independent dealership', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the identifier (unique) for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Primary Identifier Attribute for the Dealer', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the phone number for the dealership', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_Phone'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the type for the dealership, P=Packrat, B=Behmoth, A=ALL (packrat and Behemoth)', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_Type'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Zip code for the Dealer', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_Zip'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies a Micropolitan SA', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'MICSA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies a sales territory', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'ST_ID'
GO
