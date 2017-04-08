CREATE TABLE [dbo].[Color]
(
[CLR_ID] [bigint] NOT NULL,
[CLR_Name] [varchar] (40) COLLATE Latin1_General_BIN NOT NULL,
[CLR_Description] [varchar] (256) COLLATE Latin1_General_BIN NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Color] ADD CONSTRAINT [PK_Color] PRIMARY KEY NONCLUSTERED  ([CLR_ID]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a color for a vehicle type', 'SCHEMA', N'dbo', 'TABLE', N'Color', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the description of a color.', 'SCHEMA', N'dbo', 'TABLE', N'Color', 'COLUMN', N'CLR_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a color', 'SCHEMA', N'dbo', 'TABLE', N'Color', 'COLUMN', N'CLR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name for a color', 'SCHEMA', N'dbo', 'TABLE', N'Color', 'COLUMN', N'CLR_Name'
GO
