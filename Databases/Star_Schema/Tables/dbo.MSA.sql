CREATE TABLE [dbo].[MSA]
(
[MSA_Micropolitan_Area_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[MSA_Micropolitan_Area_Population] [bigint] NOT NULL,
[MSA_Micropolitan_Area_ID] [bigint] NOT NULL,
[MSA_Micropolitan_Area_Description] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[MSA_Metropolitan_Area_Population] [bigint] NOT NULL,
[MSA_Metropolitan_Area_ID] [bigint] NOT NULL,
[MSA_Metropolitan_Area_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[MSA_Metropolitan_Area_Key] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MSA] ADD CONSTRAINT [PK_MSA] PRIMARY KEY CLUSTERED  ([MSA_Micropolitan_Area_Key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'the MSA containing the dealership', 'SCHEMA', N'dbo', 'TABLE', N'MSA', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'MSA Production Key for Metropolitan area', 'SCHEMA', N'dbo', 'TABLE', N'MSA', 'COLUMN', N'MSA_Metropolitan_Area_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MSA Surrogate Key for Metropolitan area', 'SCHEMA', N'dbo', 'TABLE', N'MSA', 'COLUMN', N'MSA_Metropolitan_Area_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MSA Name for Metropolitan area', 'SCHEMA', N'dbo', 'TABLE', N'MSA', 'COLUMN', N'MSA_Metropolitan_Area_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MSA Population for Metropolitan area', 'SCHEMA', N'dbo', 'TABLE', N'MSA', 'COLUMN', N'MSA_Metropolitan_Area_Population'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MSA Description for Micropolitan area', 'SCHEMA', N'dbo', 'TABLE', N'MSA', 'COLUMN', N'MSA_Micropolitan_Area_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MSA Production Key for Micropolitan area', 'SCHEMA', N'dbo', 'TABLE', N'MSA', 'COLUMN', N'MSA_Micropolitan_Area_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MSA Surrogate Key for Micropolitan area', 'SCHEMA', N'dbo', 'TABLE', N'MSA', 'COLUMN', N'MSA_Micropolitan_Area_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MSA Population for Micropolitan area', 'SCHEMA', N'dbo', 'TABLE', N'MSA', 'COLUMN', N'MSA_Micropolitan_Area_Population'
GO
