CREATE TABLE [dbo].[Book]
(
[BK_KEY] [int] NOT NULL,
[BK_Book_ID] [char] (60) COLLATE Latin1_General_BIN NOT NULL,
[BK_Title] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[BK_Genre] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[BK_Edition_ID] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[BK_Edition] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[BK_Format_ID] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[BK_Format_Type] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[BK_Digital_Or_Paper] [varchar] (7) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book] ADD CONSTRAINT [PK_Book] PRIMARY KEY CLUSTERED  ([BK_KEY]) ON [PRIMARY]
GO
