CREATE TABLE [dbo].[FeatureSet]
(
[FS_ID] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[FS_Retail_Price] [money] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[FeatureSet] ADD CONSTRAINT [PK_FeatureSet] PRIMARY KEY NONCLUSTERED  ([FS_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a set of feature types and values', 'SCHEMA', N'dbo', 'TABLE', N'FeatureSet', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a set of features', 'SCHEMA', N'dbo', 'TABLE', N'FeatureSet', 'COLUMN', N'FS_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the suggested price for a set of features', 'SCHEMA', N'dbo', 'TABLE', N'FeatureSet', 'COLUMN', N'FS_Retail_Price'
GO
