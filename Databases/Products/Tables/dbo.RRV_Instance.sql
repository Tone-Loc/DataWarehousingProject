CREATE TABLE [dbo].[RRV_Instance]
(
[RV_Serial_Number] [bigint] NOT NULL,
[FS_ID] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[CLR_ID] [bigint] NOT NULL,
[VT_ID] [bigint] NOT NULL,
[RV_MFG_Plant_Code] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[RV_MFG_Date] [datetime] NOT NULL,
[RV_Status] [varchar] (1) COLLATE Latin1_General_BIN NULL CONSTRAINT [DF__RRV_Insta__RV_St__1FCDBCEB] DEFAULT ('U')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RRV_Instance] ADD CONSTRAINT [CKC_RV_Status_RRV_Instance] CHECK (([RV_Status] IS NULL OR ([RV_Status]='A' OR [RV_Status]='S' OR [RV_Status]='U') AND [RV_Status]=upper([RV_Status])))
GO
ALTER TABLE [dbo].[RRV_Instance] ADD CONSTRAINT [PK_RRV_Instance] PRIMARY KEY NONCLUSTERED  ([RV_Serial_Number]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [HAS_COLOR_FK] ON [dbo].[RRV_Instance] ([CLR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [HAS_FEATURESET_FK] ON [dbo].[RRV_Instance] ([FS_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [HAS_VEHICLE_TYPE_FK] ON [dbo].[RRV_Instance] ([VT_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RRV_Instance] ADD CONSTRAINT [FK_RRV_Instance_Has_Color_Color] FOREIGN KEY ([CLR_ID]) REFERENCES [dbo].[Color] ([CLR_ID])
GO
ALTER TABLE [dbo].[RRV_Instance] ADD CONSTRAINT [FK_RRV_Instance_Has_FeatureSet_FeatureSet] FOREIGN KEY ([FS_ID]) REFERENCES [dbo].[FeatureSet] ([FS_ID])
GO
ALTER TABLE [dbo].[RRV_Instance] ADD CONSTRAINT [FK_RRV_Instance_Has_Vehicle_Type_Vehicle_Type] FOREIGN KEY ([VT_ID]) REFERENCES [dbo].[Vehicle_Type] ([VT_ID])
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a physical RV it must have a U, S, or A subtype', 'SCHEMA', N'dbo', 'TABLE', N'RRV_Instance', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a color', 'SCHEMA', N'dbo', 'TABLE', N'RRV_Instance', 'COLUMN', N'CLR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a set of features', 'SCHEMA', N'dbo', 'TABLE', N'RRV_Instance', 'COLUMN', N'FS_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the date that the RV was officially passed final inspection at the plant that made it.', 'SCHEMA', N'dbo', 'TABLE', N'RRV_Instance', 'COLUMN', N'RV_MFG_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This identifies the (one and only one) plant that made this physical RV', 'SCHEMA', N'dbo', 'TABLE', N'RRV_Instance', 'COLUMN', N'RV_MFG_Plant_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is unique for each physical vehicle that is made', 'SCHEMA', N'dbo', 'TABLE', N'RRV_Instance', 'COLUMN', N'RV_Serial_Number'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This value is used to determine which subtype this RV is for:
U=Unallocated
S=Sold
A=Allocated

', 'SCHEMA', N'dbo', 'TABLE', N'RRV_Instance', 'COLUMN', N'RV_Status'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a vehicle type', 'SCHEMA', N'dbo', 'TABLE', N'RRV_Instance', 'COLUMN', N'VT_ID'
GO
