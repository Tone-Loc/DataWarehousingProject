CREATE TABLE [dbo].[Allocated]
(
[RV_Serial_Number] [bigint] NOT NULL,
[DLR_ID] [bigint] NOT NULL,
[Allocation_Date] [datetime] NOT NULL,
[Dealer_Receipt_Date] [datetime] NOT NULL,
[Processing_Fees] [money] NOT NULL,
[Handling_Fees] [money] NOT NULL,
[Transit_Fees] [money] NOT NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Allocated] ADD CONSTRAINT [PK_Allocated] PRIMARY KEY CLUSTERED  ([RV_Serial_Number]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [ALLOCATED_TO_DEALER_FK] ON [dbo].[Allocated] ([DLR_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Allocated] ADD CONSTRAINT [FK_Allocated_Allocated_to_Dealer_Dealer] FOREIGN KEY ([DLR_ID]) REFERENCES [dbo].[Dealer] ([DLR_ID])
GO
ALTER TABLE [dbo].[Allocated] ADD CONSTRAINT [FK_Allocated_ISA_RRV_RRV_Instance] FOREIGN KEY ([RV_Serial_Number]) REFERENCES [dbo].[RRV_Instance] ([RV_Serial_Number])
GO
GRANT SELECT ON  [dbo].[Allocated] TO [SEIS732_Team_21_Products_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a physical RV that has been allocated to a dealer', 'SCHEMA', N'dbo', 'TABLE', N'Allocated', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the date that a RRV instance was allocated to a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Allocated', 'COLUMN', N'Allocation_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the date that a dealer physically received a RRV instance', 'SCHEMA', N'dbo', 'TABLE', N'Allocated', 'COLUMN', N'Dealer_Receipt_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID for a dealership', 'SCHEMA', N'dbo', 'TABLE', N'Allocated', 'COLUMN', N'DLR_ID'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the total handling fees for an RRV instance', 'SCHEMA', N'dbo', 'TABLE', N'Allocated', 'COLUMN', N'Handling_Fees'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the total processing fees for an RRV instance', 'SCHEMA', N'dbo', 'TABLE', N'Allocated', 'COLUMN', N'Processing_Fees'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is unique for each physical vehicle that is made', 'SCHEMA', N'dbo', 'TABLE', N'Allocated', 'COLUMN', N'RV_Serial_Number'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the total fees for an RRV instance', 'SCHEMA', N'dbo', 'TABLE', N'Allocated', 'COLUMN', N'Transit_Fees'
GO
