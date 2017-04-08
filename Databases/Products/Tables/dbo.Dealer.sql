CREATE TABLE [dbo].[Dealer]
(
[DLR_ID] [bigint] NOT NULL,
[DLR_Code] [varchar] (15) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Street] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[DLR_City] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[DLR_State] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Zip] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Dealer] ADD CONSTRAINT [PK_Dealer] PRIMARY KEY NONCLUSTERED  ([DLR_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a dealer (a place that sells physical RVs)', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the city for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_City'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the Code (corporate unique ID) for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the State for a Dealership', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_State'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the Street address for a Dealership', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_Street'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the Zip-Code (10 digit) for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Dealer', 'COLUMN', N'DLR_Zip'
GO
