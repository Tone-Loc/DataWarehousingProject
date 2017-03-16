CREATE TABLE [dbo].[Student]
(
[STU_KEY] [int] NOT NULL,
[STU_ID] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL,
[STU_Age] [varchar] (5) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Student] ADD CONSTRAINT [PK_Student] PRIMARY KEY CLUSTERED  ([STU_KEY]) ON [PRIMARY]
GO
