CREATE TABLE [dbo].[Book_Facts]
(
[BF_KEY] [int] NOT NULL,
[STU_KEY] [int] NOT NULL,
[SCH_KEY] [int] NOT NULL,
[BK_KEY] [int] NOT NULL,
[TEA_KEY] [int] NOT NULL,
[DAT_KEY] [int] NOT NULL,
[CL_KEY] [int] NOT NULL,
[BF_Total_Number_Of_Pages_Read] [int] NOT NULL,
[BF_Total_Reading_Time_In_Minutes] [int] NOT NULL,
[BF_Estimated_Number_Of_Words_Read] [int] NOT NULL,
[BF_Estimated_Words_Per_Page] [int] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book_Facts] ADD CONSTRAINT [PK_Book_Facts] PRIMARY KEY CLUSTERED  ([BF_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [boo_FK] ON [dbo].[Book_Facts] ([BK_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [cla_FK] ON [dbo].[Book_Facts] ([CL_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [dat_FK] ON [dbo].[Book_Facts] ([DAT_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [sch_FK] ON [dbo].[Book_Facts] ([SCH_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [stu_FK] ON [dbo].[Book_Facts] ([STU_KEY]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [tea_FK] ON [dbo].[Book_Facts] ([TEA_KEY]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Book_Facts] ADD CONSTRAINT [FK_Book_Facts_boo_Book] FOREIGN KEY ([BK_KEY]) REFERENCES [dbo].[Book] ([BK_KEY])
GO
ALTER TABLE [dbo].[Book_Facts] ADD CONSTRAINT [FK_Book_Facts_cla_Class] FOREIGN KEY ([CL_KEY]) REFERENCES [dbo].[Class] ([CL_KEY])
GO
ALTER TABLE [dbo].[Book_Facts] ADD CONSTRAINT [FK_Book_Facts_dat_Date_Read] FOREIGN KEY ([DAT_KEY]) REFERENCES [dbo].[Date_Read] ([DAT_KEY])
GO
ALTER TABLE [dbo].[Book_Facts] ADD CONSTRAINT [FK_Book_Facts_sch_School] FOREIGN KEY ([SCH_KEY]) REFERENCES [dbo].[School] ([SCH_KEY])
GO
ALTER TABLE [dbo].[Book_Facts] ADD CONSTRAINT [FK_Book_Facts_stu_Student] FOREIGN KEY ([STU_KEY]) REFERENCES [dbo].[Student] ([STU_KEY])
GO
ALTER TABLE [dbo].[Book_Facts] ADD CONSTRAINT [FK_Book_Facts_tea_Teacher] FOREIGN KEY ([TEA_KEY]) REFERENCES [dbo].[Teacher] ([TEA_KEY])
GO
