CREATE TABLE [dbo].[PACKAGE]
(
[PKG_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[PKG_FeatureSet_ID] [bigint] NOT NULL,
[PKG_Package_Suggested_Retail_Price] [money] NOT NULL,
[PKG_Maximum_Number_Sleeping_Adults] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Storage_Capacity] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Onboard_Water] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Kitchen] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Bathroom] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Furnace] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Air_Conditioner] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Slide_Outs] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Tow_Hitch] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Seat_Material] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Bedding_Material] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Carpeting] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Electric] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Walls] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_GasTank] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Entertainment_Package] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Generator] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL,
[PKG_Solar_Panels] [varchar] (50) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PACKAGE] ADD CONSTRAINT [PK_PACKAGE] PRIMARY KEY CLUSTERED  ([PKG_Key]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[PACKAGE] TO [SEIS732_Team_21_Star_Schema_User]
GO
GRANT INSERT ON  [dbo].[PACKAGE] TO [SEIS732_Team_21_Star_Schema_User]
GO
GRANT DELETE ON  [dbo].[PACKAGE] TO [SEIS732_Team_21_Star_Schema_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'the package bundled with the vehicle', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'air conditioning feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Air_Conditioner'
GO
EXEC sp_addextendedproperty N'MS_Description', 'bathroom feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Bathroom'
GO
EXEC sp_addextendedproperty N'MS_Description', 'bed material feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Bedding_Material'
GO
EXEC sp_addextendedproperty N'MS_Description', 'carpeting feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Carpeting'
GO
EXEC sp_addextendedproperty N'MS_Description', 'electric featue for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Electric'
GO
EXEC sp_addextendedproperty N'MS_Description', 'entertainment package feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Entertainment_Package'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Production Key for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_FeatureSet_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'furnace feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Furnace'
GO
EXEC sp_addextendedproperty N'MS_Description', 'gas tank feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_GasTank'
GO
EXEC sp_addextendedproperty N'MS_Description', 'generator feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Generator'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Surrogate Key for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'kitchen feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Kitchen'
GO
EXEC sp_addextendedproperty N'MS_Description', 'number of sleeping areas feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Maximum_Number_Sleeping_Adults'
GO
EXEC sp_addextendedproperty N'MS_Description', 'onboard water feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Onboard_Water'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Suggested price for a package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Package_Suggested_Retail_Price'
GO
EXEC sp_addextendedproperty N'MS_Description', 'seat material feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Seat_Material'
GO
EXEC sp_addextendedproperty N'MS_Description', 'number of slide out feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Slide_Outs'
GO
EXEC sp_addextendedproperty N'MS_Description', 'solar panels feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Solar_Panels'
GO
EXEC sp_addextendedproperty N'MS_Description', 'storage capacity feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Storage_Capacity'
GO
EXEC sp_addextendedproperty N'MS_Description', 'tow hitch feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Tow_Hitch'
GO
EXEC sp_addextendedproperty N'MS_Description', 'wall texture feature for package', 'SCHEMA', N'dbo', 'TABLE', N'PACKAGE', 'COLUMN', N'PKG_Walls'
GO
