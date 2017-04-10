CREATE TABLE [dbo].[Unallocated]
(
[RV_Serial_Number] [bigint] NOT NULL,
[WH_ID] [smallint] NOT NULL,
[UNA_Received_Date] [datetime] NOT NULL,
[UNA_Cost] [money] NULL
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Unallocated] ADD CONSTRAINT [PK_Unallocated] PRIMARY KEY CLUSTERED  ([RV_Serial_Number]) ON [PRIMARY]
GO
CREATE NONCLUSTERED INDEX [STORES_UNALLOCATED_FK] ON [dbo].[Unallocated] ([WH_ID]) ON [PRIMARY]
GO
ALTER TABLE [dbo].[Unallocated] ADD CONSTRAINT [FK_Unallocated_ISA_RRV2_RRV_Instance] FOREIGN KEY ([RV_Serial_Number]) REFERENCES [dbo].[RRV_Instance] ([RV_Serial_Number])
GO
ALTER TABLE [dbo].[Unallocated] ADD CONSTRAINT [FK_Unallocated_Stores_Unallocated_Warehouse] FOREIGN KEY ([WH_ID]) REFERENCES [dbo].[Warehouse] ([WH_ID])
GO
GRANT SELECT ON  [dbo].[Unallocated] TO [SEIS732_Team_21_Products_User]
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is a physical RV that has not been sold or allocated yet', 'SCHEMA', N'dbo', 'TABLE', N'Unallocated', NULL, NULL
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is unique for each physical vehicle that is made', 'SCHEMA', N'dbo', 'TABLE', N'Unallocated', 'COLUMN', N'RV_Serial_Number'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the total cost for storing an unallocated RRV is stored at/in a physical warehouse

', 'SCHEMA', N'dbo', 'TABLE', N'Unallocated', 'COLUMN', N'UNA_Cost'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the date that a physical warehouse recieved an RRV instance

', 'SCHEMA', N'dbo', 'TABLE', N'Unallocated', 'COLUMN', N'UNA_Received_Date'
GO
EXEC sp_addextendedproperty N'MS_Description', 'This is the ID of a warehouse', 'SCHEMA', N'dbo', 'TABLE', N'Unallocated', 'COLUMN', N'WH_ID'
GO
