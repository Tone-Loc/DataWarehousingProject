CREATE TABLE [dbo].[MANUFACTURE_DATE]
(
[MDAT_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[MDAT_Year] [char] (4) COLLATE Latin1_General_BIN NOT NULL,
[MDAT_Quarter_KEY] [smallint] NOT NULL,
[MDAT_Quarter_Name] [varchar] (14) COLLATE Latin1_General_BIN NOT NULL,
[MDAT_Quarter_Abbreviation] [char] (2) COLLATE Latin1_General_BIN NOT NULL,
[MDAT_Quarter] [char] (7) COLLATE Latin1_General_BIN NOT NULL,
[MDAT_Week] [char] (11) COLLATE Latin1_General_BIN NOT NULL,
[MDAT_Week_Of_Year] [smallint] NOT NULL,
[MDAT_Week_Of_Quarter] [smallint] NOT NULL,
[MDAT_Month_KEY] [smallint] NOT NULL,
[MDAT_Month_Number] [smallint] NOT NULL,
[MDAT_Month_Name] [varchar] (9) COLLATE Latin1_General_BIN NOT NULL,
[MDAT_Month_Abbreviation] [char] (3) COLLATE Latin1_General_BIN NOT NULL,
[MDAT_Day_Of_Year] [smallint] NOT NULL,
[MDAT_Day_Of_Quarter] [smallint] NOT NULL,
[MDAT_Day_Of_Week] [varchar] (9) COLLATE Latin1_General_BIN NOT NULL,
[MDAT_Day_of_Month] [smallint] NOT NULL,
[MDAT_Weekday_Or_Weekend] [varchar] (8) COLLATE Latin1_General_BIN NOT NULL,
[MDAT_Date] [datetime] NOT NULL,
[MDAT_Full_Date_Description] [varchar] (18) COLLATE Latin1_General_BIN NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Day_of_Month_MANUFACTURE_DATE] CHECK (([MDAT_Day_of_Month]>=(1) AND [MDAT_Day_of_Month]<=(31)))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Day_Of_Week_MANUFACTURE_DATE] CHECK (([MDAT_Day_Of_Week]='Sunday' OR [MDAT_Day_Of_Week]='Saturday' OR [MDAT_Day_Of_Week]='Friday' OR [MDAT_Day_Of_Week]='Thursday' OR [MDAT_Day_Of_Week]='Wednesday' OR [MDAT_Day_Of_Week]='Tuesday' OR [MDAT_Day_Of_Week]='Monday'))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Day_Of_Year_MANUFACTURE_DATE] CHECK (([MDAT_Day_Of_Year]>=(1) AND [MDAT_Day_Of_Year]<=(366)))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Month_Abbreviation_MANUFACTURE_DATE] CHECK (([MDAT_Month_Abbreviation]='DEC' OR [MDAT_Month_Abbreviation]='NOV' OR [MDAT_Month_Abbreviation]='OCT' OR [MDAT_Month_Abbreviation]='SEP' OR [MDAT_Month_Abbreviation]='AUG' OR [MDAT_Month_Abbreviation]='JUL' OR [MDAT_Month_Abbreviation]='JUN' OR [MDAT_Month_Abbreviation]='MAY' OR [MDAT_Month_Abbreviation]='APR' OR [MDAT_Month_Abbreviation]='MAR' OR [MDAT_Month_Abbreviation]='FEB' OR [MDAT_Month_Abbreviation]='JAN'))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Month_Name_MANUFACTURE_DATE] CHECK (([MDAT_Month_Name]='December' OR [MDAT_Month_Name]='November' OR [MDAT_Month_Name]='October' OR [MDAT_Month_Name]='September' OR [MDAT_Month_Name]='August' OR [MDAT_Month_Name]='July' OR [MDAT_Month_Name]='June' OR [MDAT_Month_Name]='May' OR [MDAT_Month_Name]='April' OR [MDAT_Month_Name]='March' OR [MDAT_Month_Name]='February' OR [MDAT_Month_Name]='January'))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Month_Number_MANUFACTURE_DATE] CHECK (([MDAT_Month_Number]>=(1) AND [MDAT_Month_Number]<=(12)))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Week_Of_Quarter_MANUFACTURE_DATE] CHECK (([MDAT_Week_Of_Quarter]>=(1) AND [MDAT_Week_Of_Quarter]<=(15)))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Week_Of_Year_MANUFACTURE_DATE] CHECK (([MDAT_Week_Of_Year]>=(1) AND [MDAT_Week_Of_Year]<=(54)))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Weekday_Or_Weekend_MANUFACTURE_DATE] CHECK (([MDAT_Weekday_Or_Weekend]='Weekday' OR [MDAT_Weekday_Or_Weekend]='Weekend'))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [CKC_MDAT_Year_MANUFACTURE_DATE] CHECK (([MDAT_Year]>='1900'))
GO
ALTER TABLE [dbo].[MANUFACTURE_DATE] ADD CONSTRAINT [PK_MANUFACTURE_DATE] PRIMARY KEY CLUSTERED  ([MDAT_Key]) ON [PRIMARY]
GO
GRANT SELECT ON  [dbo].[MANUFACTURE_DATE] TO [SEIS732_Team_21_Star_Schema_User]
GO
GRANT INSERT ON  [dbo].[MANUFACTURE_DATE] TO [SEIS732_Team_21_Star_Schema_User]
GO
GRANT DELETE ON  [dbo].[MANUFACTURE_DATE] TO [SEIS732_Team_21_Star_Schema_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'The date that an RRV was Manufactured', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'Date in format mm/dd/CCYY
For example:
"01/12/2007"
(no quotes in value but other punctuation is included)', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Day of the month in format dd', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Day_of_Month'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the number of the day within the quarter', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Day_Of_Quarter'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Day of the week

For example:
Monday, Tuesday,  Wednesday, Thursday, Friday, Saturday, Sunday', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Day_Of_Week'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the number of the day within the year', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Day_Of_Year'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Date in format Month-name day-of-month, 4-digit-year
For example:
"January 12, 2007"
(no quotes in value but other punctuation is included)', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Full_Date_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Surrogate Key for the DIM', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'First three letters of the Month Name, uppercased', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Month_Abbreviation'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Surrogate Key for the Month level', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Month_KEY'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The name of the month', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Month_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'month number within the year', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Month_Number'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name for the Quarter Level for example:
"1997-Q1"
(no quotes in value but other puctuation is present)', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Quarter'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Quarter name abbreviation "Qxxx" where xxx = 1, 2, 3, or 4 for example: "Q1"
(no quotes in value but other puctuation is present)', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Quarter_Abbreviation'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Surrogate Key for Quarter level', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Quarter_KEY'
GO
EXEC sp_addextendedproperty N'MS_Description', 'The Quarter Name "xxx Quarter" where xxx = First, Second, Third, or Fourth for example: "First Quarter"
(no quotes in value but other puctuation is present)', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Quarter_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the name for the Week Level for example:
"1997-Week01"
(no quotes in value but other puctuation is present)', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Week'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Weeknumber within the quarter
Q1,Q2,and Q3 have 13 weeks while Q4 will have 13,14, or 15 weeks depending upon the year and the result of datepart(wk,<date>)', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Week_Of_Quarter'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Week number of the year as returned by
Datepart(wk,<date>)', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Week_Of_Year'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Type of day 
One of two values:
"Weekday" or "Weekend"
(no quotes in values)', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Weekday_Or_Weekend'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Year in 4-digit format CCYY', 'SCHEMA', N'dbo', 'TABLE', N'MANUFACTURE_DATE', 'COLUMN', N'MDAT_Year'
GO
