CREATE TABLE [dbo].[PURCHASE_DATE]
(
[PDAT_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[PDAT_Year] [char] (4) COLLATE Latin1_General_BIN NOT NULL,
[PDAT_Quarter_KEY] [smallint] NOT NULL,
[PDAT_Quarter_Name] [varchar] (14) COLLATE Latin1_General_BIN NOT NULL,
[PDAT_Quarter_Abbreviation] [char] (2) COLLATE Latin1_General_BIN NOT NULL,
[PDAT_Quarter] [char] (7) COLLATE Latin1_General_BIN NOT NULL,
[PDAT_Week] [char] (11) COLLATE Latin1_General_BIN NOT NULL,
[PDAT_Week_Of_Year] [smallint] NOT NULL,
[PDAT_Week_Of_Quarter] [smallint] NOT NULL,
[PDAT_Month_KEY] [smallint] NOT NULL,
[PDAT_Month_Number] [smallint] NOT NULL,
[PDAT_Month_Name] [varchar] (9) COLLATE Latin1_General_BIN NOT NULL,
[PDAT_Month_Abbreviation] [char] (3) COLLATE Latin1_General_BIN NOT NULL,
[PDAT_Day_Of_Year] [smallint] NOT NULL,
[PDAT_Day_Of_Quarter] [smallint] NOT NULL,
[PDAT_Day_Of_Week] [varchar] (9) COLLATE Latin1_General_BIN NOT NULL,
[PDAT_Day_of_Month] [smallint] NOT NULL,
[PDAT_Weekday_Or_Weekend] [varchar] (8) COLLATE Latin1_General_BIN NOT NULL,
[PDAT_Date] [datetime] NOT NULL,
[PDAT_Full_Date_Description] [varchar] (18) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[PURCHASE_DATE] ADD CONSTRAINT [CKC_PDAT_Day_of_Month_PURCHASE_DATE] CHECK (([PDAT_Day_of_Month]>=(1) AND [PDAT_Day_of_Month]<=(31)))
GO
ALTER TABLE [dbo].[PURCHASE_DATE] ADD CONSTRAINT [CKC_PDAT_Day_Of_Year_PURCHASE_DATE] CHECK (([PDAT_Day_Of_Year]>=(1) AND [PDAT_Day_Of_Year]<=(366)))
GO
ALTER TABLE [dbo].[PURCHASE_DATE] ADD CONSTRAINT [CKC_PDAT_Month_Abbreviation_PURCHASE_DATE] CHECK (([PDAT_Month_Abbreviation]='DEC' OR [PDAT_Month_Abbreviation]='NOV' OR [PDAT_Month_Abbreviation]='OCT' OR [PDAT_Month_Abbreviation]='SEP' OR [PDAT_Month_Abbreviation]='AUG' OR [PDAT_Month_Abbreviation]='JUL' OR [PDAT_Month_Abbreviation]='JUN' OR [PDAT_Month_Abbreviation]='MAY' OR [PDAT_Month_Abbreviation]='APR' OR [PDAT_Month_Abbreviation]='MAR' OR [PDAT_Month_Abbreviation]='FEB' OR [PDAT_Month_Abbreviation]='JAN'))
GO
ALTER TABLE [dbo].[PURCHASE_DATE] ADD CONSTRAINT [CKC_PDAT_Month_Name_PURCHASE_DATE] CHECK (([PDAT_Month_Name]='December' OR [PDAT_Month_Name]='November' OR [PDAT_Month_Name]='October' OR [PDAT_Month_Name]='September' OR [PDAT_Month_Name]='August' OR [PDAT_Month_Name]='July' OR [PDAT_Month_Name]='June' OR [PDAT_Month_Name]='May' OR [PDAT_Month_Name]='April' OR [PDAT_Month_Name]='March' OR [PDAT_Month_Name]='February' OR [PDAT_Month_Name]='January'))
GO
ALTER TABLE [dbo].[PURCHASE_DATE] ADD CONSTRAINT [CKC_PDAT_Month_Number_PURCHASE_DATE] CHECK (([PDAT_Month_Number]>=(1) AND [PDAT_Month_Number]<=(12)))
GO
ALTER TABLE [dbo].[PURCHASE_DATE] ADD CONSTRAINT [CKC_PDAT_Week_Of_Quarter_PURCHASE_DATE] CHECK (([PDAT_Week_Of_Quarter]>=(1) AND [PDAT_Week_Of_Quarter]<=(15)))
GO
ALTER TABLE [dbo].[PURCHASE_DATE] ADD CONSTRAINT [CKC_PDAT_Week_Of_Year_PURCHASE_DATE] CHECK (([PDAT_Week_Of_Year]>=(1) AND [PDAT_Week_Of_Year]<=(54)))
GO
ALTER TABLE [dbo].[PURCHASE_DATE] ADD CONSTRAINT [CKC_PDAT_Weekday_Or_Weekend_PURCHASE_DATE] CHECK (([PDAT_Weekday_Or_Weekend]='Weekday' OR [PDAT_Weekday_Or_Weekend]='Weekend'))
GO
ALTER TABLE [dbo].[PURCHASE_DATE] ADD CONSTRAINT [PK_PURCHASE_DATE] PRIMARY KEY CLUSTERED  ([PDAT_Key]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[PURCHASE_DATE] TO [SEIS732_Team_21_Star_Schema_User]
GO
GRANT INSERT ON  [dbo].[PURCHASE_DATE] TO [SEIS732_Team_21_Star_Schema_User]
GO
GRANT DELETE ON  [dbo].[PURCHASE_DATE] TO [SEIS732_Team_21_Star_Schema_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Date that an RRV was purchased', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'purchase date in format mm/dd/CCYY', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Day of the month in format dd', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Day_of_Month'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the number of the day within the quarter', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Day_Of_Quarter'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Monday, Tuesday, Wednesday,Thursday,Friday,Saturday,Sunday', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Day_Of_Week'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the number of the day within the year', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Day_Of_Year'
GO
EXEC sp_addextendedproperty N'MS_Description', 'purchase date in format Month day, CCYY', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Full_Date_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'purchase date Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'First three letters of the Month Name, uppercased', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Month_Abbreviation'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Surrogate Key for the Month level', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Month_KEY'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The name of the month', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Month_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'month number within the year', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Month_Number'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name for the Quarter Level for example:
"1997-Q1"
(no quotes in value but other puctuation is present)', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Quarter'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Quarter name abbreviation "Qxxx" where xxx = 1, 2, 3, or 4 for example: "Q1"
(no quotes in value but other puctuation is present)', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Quarter_Abbreviation'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Surrogate Key for Quarter level', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Quarter_KEY'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Quarter Name "xxx Quarter" where xxx = First, Second, Third, or Fourth for example: "First Quarter"
(no quotes in value but other puctuation is present)', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Quarter_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name for the Week Level for example:
"1997-Week01"
(no quotes in value but other puctuation is present)', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Week'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Weeknumber within the quarter
Q1,Q2,and Q3 have 13 weeks while Q4 will have 13,14, or 15 weeks depending upon the year and the result of datepart(wk,<date>)', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Week_Of_Quarter'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Week number of the year as returned by
Datepart(wk,<date>)', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Week_Of_Year'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Type of day 
One of two values:
"Weekday" or "Weekend"
(no quotes in values)', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Weekday_Or_Weekend'
GO
EXEC sp_addextendedproperty N'MS_Description', 'purchase date Year in format CCYY', 'SCHEMA', N'dbo', 'TABLE', N'PURCHASE_DATE', 'COLUMN', N'PDAT_Year'
GO
