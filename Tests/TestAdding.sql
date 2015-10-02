EXEC tSQLt.testAdd
GO

CREATE PROCEDURE testAdd.[verify can add to list table]
AS
BEGIN
	INSERT INTO [dbo].[ToDoList] ([Name])
	VALUES(N'This is a name')

	DECLARE @count INT;

	SELECT @count = COUNT(*) FROM [dbo].[ToDoList]

	EXEC tSQLt.AssertEquals 1 @count
END