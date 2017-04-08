CREATE TABLE [dbo].[RRV_SALES]
(
[RRV_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[MDAT_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[PRD_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[PDAT_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[PLAN_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[DLR_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[MSA_Micropolitan_Area_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[SORG_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[MFG_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[PKG_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[CUST_Key] [dbo].[KEY_DOMAIN] NOT NULL,
[RRV_Actual_Sales_Amount_in_Dollars] [money] NOT NULL,
[RRV_Processing_Fees] [money] NOT NULL,
[RRV_Handling_Fees] [money] NOT NULL,
[RRV_Transit_Fees] [money] NOT NULL,
[RRV_Retail_Or_Wholesale] [varchar] (9) COLLATE Latin1_General_BIN NOT NULL,
[RRV_Customer_Status] [varchar] (9) COLLATE Latin1_General_BIN NOT NULL,
[RRV_Serial_Number] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [CKC_RRV_Customer_Status_RRV_SALES] CHECK (([RRV_Customer_Status]='Returning' OR [RRV_Customer_Status]='FirstTime'))
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [CKC_RRV_Retail_Or_Wholesale_RRV_SALES] CHECK (([RRV_Retail_Or_Wholesale]='Wholesale' OR [RRV_Retail_Or_Wholesale]='Retail'))
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [PK_RRV_SALES] PRIMARY KEY CLUSTERED  ([RRV_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [CUSTOMER_FOR_RRV_SALES_FK] ON [dbo].[RRV_SALES] ([CUST_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DEALER_FOR_RRV_SALES_FK] ON [dbo].[RRV_SALES] ([DLR_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MFG_DATE_FOR_RRV_SALES_FK] ON [dbo].[RRV_SALES] ([MDAT_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MFG_PLANT_FOR_RRV_SALES_FK] ON [dbo].[RRV_SALES] ([MFG_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MSA_FOR_SALES_FK] ON [dbo].[RRV_SALES] ([MSA_Micropolitan_Area_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PDATE_FOR_RRV_SALES_FK] ON [dbo].[RRV_SALES] ([PDAT_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PACKAGE_FOR_RRV_SALES_FK] ON [dbo].[RRV_SALES] ([PKG_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [INCENTIVE_PLAN_FOR_RRV_SALES_FK] ON [dbo].[RRV_SALES] ([PLAN_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [PRODUCT_FOR_RRV_SALES_FK] ON [dbo].[RRV_SALES] ([PRD_Key]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [SALES_ORG_FOR_RRV_SALES_FK] ON [dbo].[RRV_SALES] ([SORG_Key]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_CUSTOMER_for_RRV_Sales_CUSTOMER] FOREIGN KEY ([CUST_Key]) REFERENCES [dbo].[CUSTOMER] ([CUST_Key])
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_DEALER_For_RRV_Sales_DEALER] FOREIGN KEY ([DLR_Key]) REFERENCES [dbo].[DEALER] ([DLR_Key])
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_INCENTIVE_PLAN_for_RRV_Sales_INCENTIVE_PLAN] FOREIGN KEY ([PLAN_Key]) REFERENCES [dbo].[INCENTIVE_PLAN] ([PLAN_Key])
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_MFG_Date_For_RRV_Sales_MANUFACTURE_DATE] FOREIGN KEY ([MDAT_Key]) REFERENCES [dbo].[MANUFACTURE_DATE] ([MDAT_Key])
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_MFG_PLANT_for_RRV_Sales_MANUFACTURING_PLANT] FOREIGN KEY ([MFG_Key]) REFERENCES [dbo].[MANUFACTURING_PLANT] ([MFG_Key])
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_MSA_For_Sales_MSA] FOREIGN KEY ([MSA_Micropolitan_Area_Key]) REFERENCES [dbo].[MSA] ([MSA_Micropolitan_Area_Key])
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_PACKAGE_FOR_RRV_SALES_PACKAGE] FOREIGN KEY ([PKG_Key]) REFERENCES [dbo].[PACKAGE] ([PKG_Key])
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_PDATE_for_RRV_Sales_PURCHASE_DATE] FOREIGN KEY ([PDAT_Key]) REFERENCES [dbo].[PURCHASE_DATE] ([PDAT_Key])
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_PRODUCT_For_RRV_Sales_PRODUCT] FOREIGN KEY ([PRD_Key]) REFERENCES [dbo].[PRODUCT] ([PRD_Key])
GO
ALTER TABLE [dbo].[RRV_SALES] ADD CONSTRAINT [FK_RRV_SALES_SALES_ORG_For_RRV_Sales_SALES_ORG] FOREIGN KEY ([SORG_Key]) REFERENCES [dbo].[SALES_ORG] ([SORG_Key])
GO
EXEC sp_addextendedproperty N'MS_Description', 'the fact table', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'customer Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'CUST_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'DLR_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Surrogate Key for the DIM', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'MDAT_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'manufacturing plant Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'MFG_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'MSA Surrogate Key for Micropolitan area', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'MSA_Micropolitan_Area_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'purchase date Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'PDAT_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Surrogate Key for package', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'PKG_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'plan Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'PLAN_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'product Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'PRD_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'total amount paid by customer FACT', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'RRV_Actual_Sales_Amount_in_Dollars'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Returning or FirstTime FACT', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'RRV_Customer_Status'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Handling fees FACT', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'RRV_Handling_Fees'
GO
EXEC sp_addextendedproperty N'MS_Description', 'fact table Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'RRV_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Processing fees FACT', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'RRV_Processing_Fees'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Retail or Wholesale FACT', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'RRV_Retail_Or_Wholesale'
GO
EXEC sp_addextendedproperty N'MS_Description', 'DD - This is unique for each physical vehicle that is made', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'RRV_Serial_Number'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Transportation fees FACT', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'RRV_Transit_Fees'
GO
EXEC sp_addextendedproperty N'MS_Description', 'sales org Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'RRV_SALES', 'COLUMN', N'SORG_Key'
GO
