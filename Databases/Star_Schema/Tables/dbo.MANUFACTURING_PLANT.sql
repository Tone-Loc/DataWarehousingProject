CREATE TABLE [dbo].[MANUFACTURING_PLANT]
(
[MFG_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[MFG_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[MFG_Description] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[MFG_Plant_Code] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[MFG_Address] [varchar] (200) COLLATE Latin1_General_BIN NOT NULL,
[MFG_City] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[MFG_County] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[MFG_State] [varchar] (2) COLLATE Latin1_General_BIN NOT NULL,
[MFG_Country] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[MFG_Zip] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[MFG_Date_Established] [datetime] NOT NULL,
[MFG_Number_Of_Workers] [smallint] NOT NULL,
[RTG_ID] [smallint] NOT NULL,
[MFG_Plant_Overall_Rating] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[MFG_Plant_Efficiency_Rating] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[MFG_Plant_Quality_Rating] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MANUFACTURING_PLANT] ADD CONSTRAINT [PK_MANUFACTURING_PLANT] PRIMARY KEY CLUSTERED  ([MFG_Key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'the plant that made the vehicle', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'manufacturing plant street address', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Address'
GO
EXEC sp_addextendedproperty N'MS_Description', 'manufacturing plant city', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_City'
GO
EXEC sp_addextendedproperty N'MS_Description', 'manufacturing plant country name', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Country'
GO
EXEC sp_addextendedproperty N'MS_Description', 'manufacturing plant county name', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_County'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Date the manufacturing plant was established', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Date_Established'
GO
EXEC sp_addextendedproperty N'MS_Description', 'description of manufacturing plant', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'manufacturing plant Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'manufacturing plant Name', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'number of workers at manufacturing plant', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Number_Of_Workers'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Uniquely identifies a manufacturing plant in OLTP', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Plant_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Efficiency rating for the manufacturing plant.', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Plant_Efficiency_Rating'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The overall rating for the manufacturing plant.', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Plant_Overall_Rating'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Quality rating for the manufacturing plant.', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Plant_Quality_Rating'
GO
EXEC sp_addextendedproperty N'MS_Description', 'manufacturing plant State XX', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_State'
GO
EXEC sp_addextendedproperty N'MS_Description', 'manufacturing plant Zip Code NNNNN-NNNN', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'MFG_Zip'
GO
EXEC sp_addextendedproperty N'MS_Description', 'the production key for the plant rating', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURING_PLANT', 'COLUMN', N'RTG_ID'
GO
