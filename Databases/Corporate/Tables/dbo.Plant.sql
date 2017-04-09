CREATE TABLE [dbo].[Plant]
(
[BR_ID] [smallint] NOT NULL,
[RTG_ID] [smallint] NOT NULL,
[PLA_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[PLA_Desc] [varchar] (256) COLLATE Latin1_General_BIN NULL,
[PLA_Established] [datetime] NOT NULL,
[PLA_WorkForce] [smallint] NULL,
[PLA_Code] [varchar] (10) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Plant] ADD CONSTRAINT [PK_Plant] PRIMARY KEY CLUSTERED  ([BR_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [HAS_RATING_FK] ON [dbo].[Plant] ([RTG_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Plant] ADD CONSTRAINT [FK_Plant_Has_Rating_Ratings] FOREIGN KEY ([RTG_ID]) REFERENCES [dbo].[Ratings] ([RTG_ID])
GO
ALTER TABLE [dbo].[Plant] ADD CONSTRAINT [FK_Plant_ISA_Branch_Branch] FOREIGN KEY ([BR_ID]) REFERENCES [dbo].[Branch] ([BR_ID])
GO
GRANT SELECT ON  [dbo].[Plant] TO [SEIS732_Team_21_Corporate_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a manufacturing plant, where RRV''s are built.  Each RRV built in a particular plant is marked with the plant code for that plant.', 'SCHEMA', N'dbo', 'TABLE', N'Plant', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'Uniquely identifies a branch.', 'SCHEMA', N'dbo', 'TABLE', N'Plant', 'COLUMN', N'BR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The plant code, a unique identifier stamped in each RRV''s built in this plant', 'SCHEMA', N'dbo', 'TABLE', N'Plant', 'COLUMN', N'PLA_Code'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The description for a manufacturing plant.', 'SCHEMA', N'dbo', 'TABLE', N'Plant', 'COLUMN', N'PLA_Desc'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The date that a manufacturing plant was established', 'SCHEMA', N'dbo', 'TABLE', N'Plant', 'COLUMN', N'PLA_Established'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The name for a manufacturing plant', 'SCHEMA', N'dbo', 'TABLE', N'Plant', 'COLUMN', N'PLA_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The size of the workforce at a manufacturing plant.', 'SCHEMA', N'dbo', 'TABLE', N'Plant', 'COLUMN', N'PLA_WorkForce'
GO
