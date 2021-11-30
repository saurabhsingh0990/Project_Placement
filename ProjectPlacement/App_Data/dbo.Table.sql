CREATE VIEW [dbo].[Member]
	AS SELECT ID , Name, class, Email_ID, Phone_Number, Department  FROM [People] where Role = 'Mem%'