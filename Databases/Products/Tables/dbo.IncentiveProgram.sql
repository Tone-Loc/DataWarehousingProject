CREATE TABLE [dbo].[IncentiveProgram]
(
[IP_ID] [smallint] NOT NULL,
[IP_Type] [varchar] (15) COLLATE Latin1_General_BIN NOT NULL,
[IP_Level] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL,
[IP_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[IP_Desc] [varchar] (256) COLLATE Latin1_General_BIN NULL,
[IP_Num_Payments] [smallint] NULL,
[IP_Rate] [numeric] (4, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[IncentiveProgram] ADD CONSTRAINT [PK_IncentiveProgram] PRIMARY KEY NONCLUSTERED  ([IP_ID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[IncentiveProgram] TO [SEIS732_Team_21_Products_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the incentive program that an RRV was sold under (there is a standard program used as the default)', 'SCHEMA', N'dbo', 'TABLE', N'IncentiveProgram', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the description for an incentive program', 'SCHEMA', N'dbo', 'TABLE', N'IncentiveProgram', 'COLUMN', N'IP_Desc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the id for an incentive program', 'SCHEMA', N'dbo', 'TABLE', N'IncentiveProgram', 'COLUMN', N'IP_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This si the level for an incentive program', 'SCHEMA', N'dbo', 'TABLE', N'IncentiveProgram', 'COLUMN', N'IP_Level'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name for an incentive program', 'SCHEMA', N'dbo', 'TABLE', N'IncentiveProgram', 'COLUMN', N'IP_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the number of payments for an incentive program', 'SCHEMA', N'dbo', 'TABLE', N'IncentiveProgram', 'COLUMN', N'IP_Num_Payments'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the rate for an incentive program', 'SCHEMA', N'dbo', 'TABLE', N'IncentiveProgram', 'COLUMN', N'IP_Rate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the type for an incentive program', 'SCHEMA', N'dbo', 'TABLE', N'IncentiveProgram', 'COLUMN', N'IP_Type'
GO
