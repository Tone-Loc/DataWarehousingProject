CREATE TABLE [dbo].[Feature]
(
[FEA_ID] [bigint] NOT NULL,
[FS_ID] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[FEA_Type] [varchar] (30) COLLATE Latin1_General_BIN NOT NULL,
[FEA_Value] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[FEA_Description] [varchar] (100) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feature] ADD CONSTRAINT [PK_Feature] PRIMARY KEY NONCLUSTERED  ([FEA_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [HAS_FEATURE_FK] ON [dbo].[Feature] ([FS_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Feature] ADD CONSTRAINT [FK_Feature_Has_Feature_FeatureSet] FOREIGN KEY ([FS_ID]) REFERENCES [dbo].[FeatureSet] ([FS_ID])
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is single feature type and value', 'SCHEMA', N'dbo', 'TABLE', N'Feature', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the Description for a feature', 'SCHEMA', N'dbo', 'TABLE', N'Feature', 'COLUMN', N'FEA_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the id for a feature', 'SCHEMA', N'dbo', 'TABLE', N'Feature', 'COLUMN', N'FEA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the type for a feature', 'SCHEMA', N'dbo', 'TABLE', N'Feature', 'COLUMN', N'FEA_Type'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the value for a feature', 'SCHEMA', N'dbo', 'TABLE', N'Feature', 'COLUMN', N'FEA_Value'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a set of features', 'SCHEMA', N'dbo', 'TABLE', N'Feature', 'COLUMN', N'FS_ID'
GO
