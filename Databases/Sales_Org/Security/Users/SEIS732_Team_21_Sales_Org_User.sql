IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'SEIS732_Team_21_Sales_Org_User')
CREATE LOGIN [SEIS732_Team_21_Sales_Org_User] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [SEIS732_Team_21_Sales_Org_User] FOR LOGIN [SEIS732_Team_21_Sales_Org_User]
GO
