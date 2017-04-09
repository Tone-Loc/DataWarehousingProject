CREATE TABLE [dbo].[Website]
(
[WEB_ID] [smallint] NOT NULL,
[WEB_URL] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[WEB_Admin] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[WEB_Start_Date] [datetime] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Website] ADD CONSTRAINT [PK_Website] PRIMARY KEY NONCLUSTERED  ([WEB_ID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[Website] TO [SEIS732_Team_21_Corporate_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the website details for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Website', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the email of the web admistrator', 'SCHEMA', N'dbo', 'TABLE', N'Website', 'COLUMN', N'WEB_Admin'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The date when the website first went online', 'SCHEMA', N'dbo', 'TABLE', N'Website', 'COLUMN', N'WEB_Start_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Website URL (if any) for this dealership', 'SCHEMA', N'dbo', 'TABLE', N'Website', 'COLUMN', N'WEB_URL'
GO
