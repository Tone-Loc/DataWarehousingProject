CREATE TABLE [dbo].[Micropolitan_Statistical_Area]
(
[MICSA_ID] [bigint] NOT NULL,
[MSA_ID] [bigint] NOT NULL,
[MICSA_Description] [varchar] (100) COLLATE Latin1_General_BIN NOT NULL,
[MICSA_Population] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Micropolitan_Statistical_Area] ADD CONSTRAINT [PK_Micropolitan_Statistical_Area] PRIMARY KEY NONCLUSTERED  ([MICSA_ID]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [MSA_HAS_MICROSA_FK] ON [dbo].[Micropolitan_Statistical_Area] ([MSA_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Micropolitan_Statistical_Area] ADD CONSTRAINT [FK_Micropolitan_Statistical_Area_MSA_has_MicroSA_Metropolitan_Statistical_Area] FOREIGN KEY ([MSA_ID]) REFERENCES [dbo].[Metropolitan_Statistical_Area] ([MSA_ID])
GO
GRANT SELECT ON  [dbo].[Micropolitan_Statistical_Area] TO [SEIS732_Team_21_Sales_Org_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is specific subset of an MSA (loosely based upon the zip code).
There can be one or more MSA_Zip_Code subsets for each MSA', 'SCHEMA', N'dbo', 'TABLE', N'Micropolitan_Statistical_Area', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the description of the MICSA', 'SCHEMA', N'dbo', 'TABLE', N'Micropolitan_Statistical_Area', 'COLUMN', N'MICSA_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies a Micropolitan SA', 'SCHEMA', N'dbo', 'TABLE', N'Micropolitan_Statistical_Area', 'COLUMN', N'MICSA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the population for the MICSA', 'SCHEMA', N'dbo', 'TABLE', N'Micropolitan_Statistical_Area', 'COLUMN', N'MICSA_Population'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies an MSA', 'SCHEMA', N'dbo', 'TABLE', N'Micropolitan_Statistical_Area', 'COLUMN', N'MSA_ID'
GO
