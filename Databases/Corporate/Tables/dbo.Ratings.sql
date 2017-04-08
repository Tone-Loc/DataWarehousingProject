CREATE TABLE [dbo].[Ratings]
(
[RTG_ID] [smallint] NOT NULL,
[RTG_Overall_Rating] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[RTG_Eff_Rating] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[RTG_Quality_Rating] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Ratings] ADD CONSTRAINT [PK_Ratings] PRIMARY KEY NONCLUSTERED  ([RTG_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This Tab le has various rating details', 'SCHEMA', N'dbo', 'TABLE', N'Ratings', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Rating for a manufacturing plant', 'SCHEMA', N'dbo', 'TABLE', N'Ratings', 'COLUMN', N'RTG_Overall_Rating'
GO
