CREATE TABLE [dbo].[DEALER]
(
[DLR_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[DLR_Code] [varchar] (15) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Name] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Address] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[DLR_City] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[DLR_County] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[DLR_State] [varchar] (2) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Country] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Zip] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Authorized_Makes] [varchar] (30) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Independent_Or_Corporate] [varchar] (11) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Email_Address] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Initiation_Date] [datetime] NOT NULL,
[DLR_Phone_Number] [varchar] (30) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Official_Website_ID] [smallint] NOT NULL,
[DLR_Official_WebsiteURL] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Official_WebsiteAdministrator_Email] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[DLR_Official_Website_Start_Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[DEALER] ADD CONSTRAINT [CKC_DLR_Authorized_Makes_DEALER] CHECK (([DLR_Authorized_Makes]='Unknown' OR [DLR_Authorized_Makes]='None' OR [DLR_Authorized_Makes]='All_Makes' OR [DLR_Authorized_Makes]='Behemoth' OR [DLR_Authorized_Makes]='Packrat'))
GO
ALTER TABLE [dbo].[DEALER] ADD CONSTRAINT [CKC_DLR_Independent_Or_Corporate_DEALER] CHECK (([DLR_Independent_Or_Corporate]='Corporate' OR [DLR_Independent_Or_Corporate]='Independent'))
GO
ALTER TABLE [dbo].[DEALER] ADD CONSTRAINT [PK_DEALER] PRIMARY KEY CLUSTERED  ([DLR_Key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'the dealer that sold the vehicle', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer street address', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Address'
GO
EXEC sp_addextendedproperty N'MS_Description', 'each dealer is an authorized seller of "Packrat", "Behemoth", "All_Makes", or "Unknown"', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Authorized_Makes'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer City Name', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_City'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Uniquely identifies a dealer in OLTP', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer Country Name', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Country'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer County Name', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_County'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer main email address', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Email_Address'
GO
EXEC sp_addextendedproperty N'MS_Description', 'each dealer is either "Independent" or "Corporate"', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Independent_Or_Corporate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Date the dealer was initiated', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Initiation_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer name', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'the production key for the official website', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Official_Website_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The date when the website first went online', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Official_Website_Start_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the email of the web admistrator', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Official_WebsiteAdministrator_Email'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Website URL (if any) for this dealership', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Official_WebsiteURL'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer Phone Number including area code--For example: "(612)555-1234x1234", or "1-800-555-1234x1234"', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Phone_Number'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer State Name (two letters)', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_State'
GO
EXEC sp_addextendedproperty N'MS_Description', 'dealer zip code NNNNN-NNNN', 'SCHEMA', N'dbo', 'TABLE', N'DEALER', 'COLUMN', N'DLR_Zip'
GO
