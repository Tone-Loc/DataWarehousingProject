CREATE TABLE [dbo].[Metropolitan_Statistical_Area]
(
[MSA_ID] [bigint] NOT NULL,
[MSA_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[MSA_Description] [varchar] (100) COLLATE Latin1_General_BIN NOT NULL,
[MSA_Population] [bigint] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Metropolitan_Statistical_Area] ADD CONSTRAINT [PK_Metropolitan_Statistical_Area] PRIMARY KEY NONCLUSTERED  ([MSA_ID]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[Metropolitan_Statistical_Area] TO [SEIS732_Team_21_Sales_Org_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the Name of an MSA as defined by the United States Office of Management and Budget (OMB) according to published standards that are applied to Census Bureau data.', 'SCHEMA', N'dbo', 'TABLE', N'Metropolitan_Statistical_Area', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is an informal description of the MSA.', 'SCHEMA', N'dbo', 'TABLE', N'Metropolitan_Statistical_Area', 'COLUMN', N'MSA_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Identifies an MSA', 'SCHEMA', N'dbo', 'TABLE', N'Metropolitan_Statistical_Area', 'COLUMN', N'MSA_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name of the MSA as specified by the government', 'SCHEMA', N'dbo', 'TABLE', N'Metropolitan_Statistical_Area', 'COLUMN', N'MSA_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the population for the MSA', 'SCHEMA', N'dbo', 'TABLE', N'Metropolitan_Statistical_Area', 'COLUMN', N'MSA_Population'
GO
