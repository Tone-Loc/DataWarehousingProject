CREATE TABLE [dbo].[Date_Read]
(
[DAT_KEY] [int] NOT NULL,
[DAT_Year] [char] (4) COLLATE Latin1_General_BIN NOT NULL,
[DAT_Mon] [char] (2) COLLATE Latin1_General_BIN NOT NULL,
[DAT_Day] [char] (2) COLLATE Latin1_General_BIN NOT NULL,
[DAT_Day_Of_Week] [varchar] (11) COLLATE Latin1_General_BIN NOT NULL,
[DAT_WeekEnd_Or_WeekDay] [varchar] (7) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Date_Read] ADD CONSTRAINT [PK_Date_Read] PRIMARY KEY CLUSTERED  ([DAT_KEY]) ON [PRIMARY]
GO
