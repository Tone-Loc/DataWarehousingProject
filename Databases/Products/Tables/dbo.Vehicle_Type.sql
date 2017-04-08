CREATE TABLE [dbo].[Vehicle_Type]
(
[VT_ID] [bigint] NOT NULL,
[MMC_ID] [smallint] NOT NULL,
[VT_Model_Year] [smallint] NOT NULL,
[VT_MSRP] [money] NOT NULL,
[VT_Wholesale_Price] [money] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vehicle_Type] ADD CONSTRAINT [PK_Vehicle_Type] PRIMARY KEY NONCLUSTERED  ([VT_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [VT_HAS_MMC_FK] ON [dbo].[Vehicle_Type] ([MMC_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Vehicle_Type] ADD CONSTRAINT [FK_Vehicle_Type_VT_Has_MMC_MMC] FOREIGN KEY ([MMC_ID]) REFERENCES [dbo].[MMC] ([MMC_ID])
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a vehicle type (a unique combination of make, model class, color, and feature sets)', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle_Type', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a combination of Make, Model, and Class', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle_Type', 'COLUMN', N'MMC_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a vehicle type', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle_Type', 'COLUMN', N'VT_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the model year for an RRV type', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle_Type', 'COLUMN', N'VT_Model_Year'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the Manufacturer''s suggested retail price for this vehicle type (not including any feature packages)', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle_Type', 'COLUMN', N'VT_MSRP'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the wholesale price for this vehicle type (not including any feature packages)', 'SCHEMA', N'dbo', 'TABLE', N'Vehicle_Type', 'COLUMN', N'VT_Wholesale_Price'
GO
