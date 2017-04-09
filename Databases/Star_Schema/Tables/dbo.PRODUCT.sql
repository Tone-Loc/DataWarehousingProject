CREATE TABLE [dbo].[PRODUCT]
(
[PRD_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[PRD_Make_Key] [smallint] NOT NULL,
[PRD_Make_Name] [varchar] (40) COLLATE Latin1_General_BIN NOT NULL,
[PRD_Make_Description] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[PRD_Model_Key] [smallint] NOT NULL,
[PRD_Model_Name] [varchar] (40) COLLATE Latin1_General_BIN NOT NULL,
[PRD_Model_Description] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[PRD_Class_Key] [smallint] NOT NULL,
[PRD_Class_Name] [varchar] (40) COLLATE Latin1_General_BIN NOT NULL,
[PRD_Class_Description] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[PRD_Color_Key] [smallint] NOT NULL,
[PRD_Color_ID] [bigint] NOT NULL,
[PRD_Color_Name] [varchar] (40) COLLATE Latin1_General_BIN NOT NULL,
[PRD_Color_Description] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[PRD_Model_Year] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[PRD_VehicleType_ID] [bigint] NOT NULL,
[PRD_Manufacturer_Suggested_Retail_Price] [money] NOT NULL,
[PRD_Wholesale_Price] [money] NOT NULL,
[PRD_MMC_ID] [smallint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PRODUCT] ADD CONSTRAINT [PK_PRODUCT] PRIMARY KEY CLUSTERED  ([PRD_Key]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[PRODUCT] TO [SEIS732_Team_21_Star_Schema_User]
GO
GRANT INSERT ON  [dbo].[PRODUCT] TO [SEIS732_Team_21_Star_Schema_User]
GO
GRANT DELETE ON  [dbo].[PRODUCT] TO [SEIS732_Team_21_Star_Schema_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'the vehicle sold', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'description of class', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Class_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'SK for Class l', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Class_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'class name', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Class_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'description of color', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Color_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'color Production Key', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Color_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'SK for Color level', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Color_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'color name', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Color_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'product Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'description of make', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Make_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'SK for Make level', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Make_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'make name', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Make_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Suggested retail price for product', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Manufacturer_Suggested_Retail_Price'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Production key representing a particular make model and class combination', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_MMC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'description of model', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Model_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'SK for Model level', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Model_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'model name', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Model_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Model Year CCYY', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Model_Year'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Production Key for vehicle type', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_VehicleType_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Suggested wholesale price for product', 'SCHEMA', N'dbo', 'TABLE', N'PRODUCT', 'COLUMN', N'PRD_Wholesale_Price'
GO
