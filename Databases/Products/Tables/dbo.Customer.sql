CREATE TABLE [dbo].[Customer]
(
[CUST_ID] [bigint] NOT NULL,
[CUST_FNAME] [varchar] (30) COLLATE Latin1_General_BIN NOT NULL,
[CUST_MNAME] [varchar] (30) COLLATE Latin1_General_BIN NOT NULL,
[CUST_LNAME] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[CUST_ADDR] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[CUST_CITY] [varchar] (45) COLLATE Latin1_General_BIN NOT NULL,
[CUST_COUNTY] [varchar] (60) COLLATE Latin1_General_BIN NULL,
[CUST_STATE] [varchar] (2) COLLATE Latin1_General_BIN NOT NULL,
[CUST_COUNTRY] [varchar] (60) COLLATE Latin1_General_BIN NULL,
[CUST_ZIP] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[CUST_HOME] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL,
[CUST_WORK] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL,
[CUST_CELL] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Customer] ADD CONSTRAINT [PK_Customer] PRIMARY KEY NONCLUSTERED  ([CUST_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is someone who has bought at least one physical vehicle', 'SCHEMA', N'dbo', 'TABLE', N'Customer', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s street address', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_ADDR'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s cell phone number', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_CELL'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s city', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_CITY'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s country', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_COUNTRY'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s county', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_COUNTY'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s first name', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_FNAME'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s home phone number', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_HOME'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a Customer', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s last name', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_LNAME'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s middle name, or initial.', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_MNAME'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s state ', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_STATE'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s work phone number', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_WORK'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a customer''s zip code (10 digit)', 'SCHEMA', N'dbo', 'TABLE', N'Customer', 'COLUMN', N'CUST_ZIP'
GO
