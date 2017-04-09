IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'SEIS732_Team_21_Corporate_User')
CREATE LOGIN [SEIS732_Team_21_Corporate_User] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [SEIS732_Team_21_Corporate_User] FOR LOGIN [SEIS732_Team_21_Corporate_User]
GO
