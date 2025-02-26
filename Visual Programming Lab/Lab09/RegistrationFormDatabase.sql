/*
   Wednesday, April 24, 20243:09:33 AM
   User: 
   Server: DESKTOP-1T09T6V\SQLEXPRESS01
   Database: Lab09
   Application: 
*/

/* To prevent any potential data loss issues, you should review this script in detail before running it outside the context of the database designer.*/
BEGIN TRANSACTION
SET QUOTED_IDENTIFIER ON
SET ARITHABORT ON
SET NUMERIC_ROUNDABORT OFF
SET CONCAT_NULL_YIELDS_NULL ON
SET ANSI_NULLS ON
SET ANSI_PADDING ON
SET ANSI_WARNINGS ON
COMMIT
BEGIN TRANSACTION
GO
CREATE TABLE dbo.lab09
	(
	Email varchar(50) NOT NULL,
	Password varchar(50) NULL,
	FirstName varchar(50) NULL,
	LastName varchar(50) NULL,
	Gender varchar(50) NULL,
	DateofBirth varchar(50) NULL
	)  ON [PRIMARY]
GO
ALTER TABLE dbo.lab09 ADD CONSTRAINT
	PK_lab09 PRIMARY KEY CLUSTERED 
	(
	Email
	) WITH( STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]

GO
ALTER TABLE dbo.lab09 SET (LOCK_ESCALATION = TABLE)
GO
COMMIT
select Has_Perms_By_Name(N'dbo.lab09', 'Object', 'ALTER') as ALT_Per, Has_Perms_By_Name(N'dbo.lab09', 'Object', 'VIEW DEFINITION') as View_def_Per, Has_Perms_By_Name(N'dbo.lab09', 'Object', 'CONTROL') as Contr_Per 