CREATE TABLE [dbo].[MMC]
(
[MMC_ID] [smallint] NOT NULL,
[MMC_Make_Name] [varchar] (40) COLLATE Latin1_General_BIN NOT NULL,
[MMC_Make_Desc] [varchar] (256) COLLATE Latin1_General_BIN NULL,
[MMC_Model_Name] [varchar] (40) COLLATE Latin1_General_BIN NOT NULL,
[MMC_Model_Desc] [varchar] (256) COLLATE Latin1_General_BIN NULL,
[MMC_Class_Name] [varchar] (40) COLLATE Latin1_General_BIN NOT NULL,
[MMC_Class_Desc] [varchar] (256) COLLATE Latin1_General_BIN NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MMC] ADD CONSTRAINT [PK_MMC] PRIMARY KEY NONCLUSTERED  ([MMC_ID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[MMC] TO [SEIS732_Team_21_Products_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the make, model. and class information for a vehicle type', 'SCHEMA', N'dbo', 'TABLE', N'MMC', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the description of the class', 'SCHEMA', N'dbo', 'TABLE', N'MMC', 'COLUMN', N'MMC_Class_Desc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name of the class', 'SCHEMA', N'dbo', 'TABLE', N'MMC', 'COLUMN', N'MMC_Class_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a combination of Make, Model, and Class', 'SCHEMA', N'dbo', 'TABLE', N'MMC', 'COLUMN', N'MMC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a description of a Make', 'SCHEMA', N'dbo', 'TABLE', N'MMC', 'COLUMN', N'MMC_Make_Desc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name of a Make', 'SCHEMA', N'dbo', 'TABLE', N'MMC', 'COLUMN', N'MMC_Make_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the description of a Model', 'SCHEMA', N'dbo', 'TABLE', N'MMC', 'COLUMN', N'MMC_Model_Desc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the Name of a model', 'SCHEMA', N'dbo', 'TABLE', N'MMC', 'COLUMN', N'MMC_Model_Name'
GO
