CREATE TABLE [dbo].[School]
(
[SCH_KEY] [int] NOT NULL,
[SCH_ID] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SCH_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SCH_State] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SCH_County] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SCH_City] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SCH_Street] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[SCH_Zip] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[School] ADD CONSTRAINT [PK_School] PRIMARY KEY CLUSTERED  ([SCH_KEY]) ON [PRIMARY]
GO
