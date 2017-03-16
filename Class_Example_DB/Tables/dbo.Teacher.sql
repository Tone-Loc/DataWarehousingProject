CREATE TABLE [dbo].[Teacher]
(
[TEA_KEY] [int] NOT NULL,
[TEA_Education_Level] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[TEA_Years_Experience] [varchar] (5) COLLATE Latin1_General_BIN NOT NULL,
[TEA_ID] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Teacher] ADD CONSTRAINT [PK_Teacher] PRIMARY KEY CLUSTERED  ([TEA_KEY]) ON [PRIMARY]
GO
