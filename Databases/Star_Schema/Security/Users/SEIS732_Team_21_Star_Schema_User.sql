IF NOT EXISTS (SELECT * FROM master.dbo.syslogins WHERE loginname = N'SEIS732_Team_21_Star_Schema_User')
CREATE LOGIN [SEIS732_Team_21_Star_Schema_User] WITH PASSWORD = 'p@ssw0rd'
GO
CREATE USER [SEIS732_Team_21_Star_Schema_User] FOR LOGIN [SEIS732_Team_21_Star_Schema_User]
GO
