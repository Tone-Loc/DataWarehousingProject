CREATE TABLE [dbo].[Class]
(
[CL_KEY] [int] NOT NULL,
[CL_Grade_Level_ID] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[CL_Grade_Level] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[CL_Class_ID] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL,
[CL_Class_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Class] ADD CONSTRAINT [PK_Class] PRIMARY KEY CLUSTERED  ([CL_KEY]) ON [PRIMARY]
GO
