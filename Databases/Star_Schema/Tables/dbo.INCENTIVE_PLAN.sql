CREATE TABLE [dbo].[INCENTIVE_PLAN]
(
[PLAN_Key] [dbo].[KEY_DOMAIN] NOT NULL IDENTITY(1, 1),
[PLAN_ID] [smallint] NOT NULL,
[PLAN_Type] [varchar] (15) COLLATE Latin1_General_BIN NOT NULL,
[PLAN_Level] [varchar] (20) COLLATE Latin1_General_BIN NOT NULL,
[PLAN_Name] [varchar] (60) COLLATE Latin1_General_BIN NOT NULL,
[PLAN_Description] [varchar] (256) COLLATE Latin1_General_BIN NOT NULL,
[PLAN_Number_of_Payments] [smallint] NULL,
[PLAN_Rate] [numeric] (4, 2) NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[INCENTIVE_PLAN] ADD CONSTRAINT [PK_INCENTIVE_PLAN] PRIMARY KEY CLUSTERED  ([PLAN_Key]) ON [PRIMARY]
GO
EXEC sp_addextendedproperty N'MS_Description', 'the plan used in the purchase', 'SCHEMA', N'dbo', 'TABLE', N'INCENTIVE_PLAN', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'description of plan', 'SCHEMA', N'dbo', 'TABLE', N'INCENTIVE_PLAN', 'COLUMN', N'PLAN_Description'
GO
EXEC sp_addextendedproperty N'MS_Description', 'plan Production Key', 'SCHEMA', N'dbo', 'TABLE', N'INCENTIVE_PLAN', 'COLUMN', N'PLAN_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'plan Surrogate Key', 'SCHEMA', N'dbo', 'TABLE', N'INCENTIVE_PLAN', 'COLUMN', N'PLAN_Key'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Level for a plan', 'SCHEMA', N'dbo', 'TABLE', N'INCENTIVE_PLAN', 'COLUMN', N'PLAN_Level'
GO
EXEC sp_addextendedproperty N'MS_Description', 'plan name', 'SCHEMA', N'dbo', 'TABLE', N'INCENTIVE_PLAN', 'COLUMN', N'PLAN_Name'
GO
EXEC sp_addextendedproperty N'MS_Description', 'number of payments in plan', 'SCHEMA', N'dbo', 'TABLE', N'INCENTIVE_PLAN', 'COLUMN', N'PLAN_Number_of_Payments'
GO
EXEC sp_addextendedproperty N'MS_Description', 'Interest rate used in plan', 'SCHEMA', N'dbo', 'TABLE', N'INCENTIVE_PLAN', 'COLUMN', N'PLAN_Rate'
GO
EXEC sp_addextendedproperty N'MS_Description', 'type of plan', 'SCHEMA', N'dbo', 'TABLE', N'INCENTIVE_PLAN', 'COLUMN', N'PLAN_Type'
GO
