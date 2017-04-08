CREATE TABLE [dbo].[CUSTOMER]
(
[CUST_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[CUST_ID] [bigint] NOT NULL,
[CUST_City] [varchar] (45) COLLATE Latin1_General_BIN NOT NULL,
[CUST_County] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[CUST_State] [varchar] (2) COLLATE Latin1_General_BIN NOT NULL,
[CUST_Country] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[CUST_Zip] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[CUSTOMER] ADD CONSTRAINT [PK_CUSTOMER] PRIMARY KEY CLUSTERED  ([CUST_Key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'the customer that bought the vehicle', 'SCHEMA', N'dbo', 'TABLE', N'CUSTOMER', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'customer city name', 'SCHEMA', N'dbo', 'TABLE', N'CUSTOMER', 'COLUMN', N'CUST_City'
GO
EXEC sp_addextendedproperty N'MS_Description', 'customer country name', 'SCHEMA', N'dbo', 'TABLE', N'CUSTOMER', 'COLUMN', N'CUST_Country'
GO
EXEC sp_addextendedproperty N'MS_Description', 'customer county name', 'SCHEMA', N'dbo', 'TABLE', N'CUSTOMER', 'COLUMN', N'CUST_County'
GO
EXEC sp_addextendedproperty N'MS_Description', 'customer Production Key', 'SCHEMA', N'dbo', 'TABLE', N'CUSTOMER', 'COLUMN', N'CUST_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'customer Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'CUSTOMER', 'COLUMN', N'CUST_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'customer State (two letter format)', 'SCHEMA', N'dbo', 'TABLE', N'CUSTOMER', 'COLUMN', N'CUST_State'
GO
EXEC sp_addextendedproperty N'MS_Description', 'customer Zip Code NNNNN-NNNN', 'SCHEMA', N'dbo', 'TABLE', N'CUSTOMER', 'COLUMN', N'CUST_Zip'
GO
