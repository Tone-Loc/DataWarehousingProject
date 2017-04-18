CREATE TABLE [dbo].[Sold]
(
[RV_Serial_Number] [bigint] NOT NULL,
[DLR_ID] [bigint] NULL,
[IP_ID] [smallint] NULL,
[CUST_ID] [bigint] NULL,
[Sale_Date] [datetime] NULL,
[Actual_Sales_Amount] [money] NULL,
[Sales_Tax_Amount] [money] NULL,
[Retail_Or_WholeSale] [varchar] (1) COLLATE Latin1_General_BIN NULL CONSTRAINT [DF__Sold__Retail_Or___24927208] DEFAULT ('R'),
[First_Time_Buyer] [varchar] (1) COLLATE Latin1_General_BIN NULL CONSTRAINT [DF__Sold__First_Time__267ABA7A] DEFAULT ('F')
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sold] ADD CONSTRAINT [CKC_Actual_Sales_Amount_Sold] CHECK (([Actual_Sales_Amount] IS NULL OR [Actual_Sales_Amount]>=(10000)))
GO
ALTER TABLE [dbo].[Sold] ADD CONSTRAINT [CKC_First_Time_Buyer_Sold] CHECK (([First_Time_Buyer] IS NULL OR ([First_Time_Buyer]='F' OR [First_Time_Buyer]='T') AND [First_Time_Buyer]=upper([First_Time_Buyer])))
GO
ALTER TABLE [dbo].[Sold] ADD CONSTRAINT [CKC_Retail_Or_WholeSale_Sold] CHECK (([Retail_Or_WholeSale] IS NULL OR [Retail_Or_WholeSale]='W' OR [Retail_Or_WholeSale]='R'))
GO
ALTER TABLE [dbo].[Sold] ADD CONSTRAINT [PK_Sold] PRIMARY KEY CLUSTERED  ([RV_Serial_Number]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [BOUGHT_BY_FK] ON [dbo].[Sold] ([CUST_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [DEALER_SOLD_VEHICLE_FK] ON [dbo].[Sold] ([DLR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [USING_PLAN_FK] ON [dbo].[Sold] ([IP_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Sold] ADD CONSTRAINT [FK_Sold_Bought_By_Customer] FOREIGN KEY ([CUST_ID]) REFERENCES [dbo].[Customer] ([CUST_ID])
GO
ALTER TABLE [dbo].[Sold] ADD CONSTRAINT [FK_Sold_Dealer_Sold_Vehicle_Dealer] FOREIGN KEY ([DLR_ID]) REFERENCES [dbo].[Dealer] ([DLR_ID])
GO
ALTER TABLE [dbo].[Sold] ADD CONSTRAINT [FK_Sold_ISA_Allocated_Allocated] FOREIGN KEY ([RV_Serial_Number]) REFERENCES [dbo].[Allocated] ([RV_Serial_Number])
GO
ALTER TABLE [dbo].[Sold] ADD CONSTRAINT [FK_Sold_Using_Plan_IncentiveProgram] FOREIGN KEY ([IP_ID]) REFERENCES [dbo].[IncentiveProgram] ([IP_ID])
GO
GRANT SELECT ON  [dbo].[Sold] TO [SEIS732_Team_21_Products_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a physical RV that has been sold', 'SCHEMA', N'dbo', 'TABLE', N'Sold', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the actual sales amount for a sale (Tax NOT included)

Madatory if Sold, but NULL if Allocated', 'SCHEMA', N'dbo', 'TABLE', N'Sold', 'COLUMN', N'Actual_Sales_Amount'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a Customer', 'SCHEMA', N'dbo', 'TABLE', N'Sold', 'COLUMN', N'CUST_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Sold', 'COLUMN', N'DLR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is ''T'' if the customer has never bought an RRV ever, otherwise it is ''F'' if this is an existing customer 

Madatory if Sold, but NULL if Allocated', 'SCHEMA', N'dbo', 'TABLE', N'Sold', 'COLUMN', N'First_Time_Buyer'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the id for an incentive program', 'SCHEMA', N'dbo', 'TABLE', N'Sold', 'COLUMN', N'IP_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', '(R)etail or (W)holeSale

Madatory if Sold, but NULL if Allocated', 'SCHEMA', N'dbo', 'TABLE', N'Sold', 'COLUMN', N'Retail_Or_WholeSale'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is unique for each physical vehicle that is made', 'SCHEMA', N'dbo', 'TABLE', N'Sold', 'COLUMN', N'RV_Serial_Number'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the date that RRV was actually sold

Madatory if Sold, but NULL if Allocated', 'SCHEMA', N'dbo', 'TABLE', N'Sold', 'COLUMN', N'Sale_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the total sales tax amount (add this and the Actual_Sales_Amount to see the total price paid including all fees but not including interest on a plan)

Madatory if Sold, but NULL if Allocated', 'SCHEMA', N'dbo', 'TABLE', N'Sold', 'COLUMN', N'Sales_Tax_Amount'
GO
