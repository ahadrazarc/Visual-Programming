alter PROCEDURE selectdata 
@Email varchar(50)
AS
BEGIN
SELECT  Email, Password, FirstName, LastName, Gender, DateofBirth
FROM [lab09] where Email=@Email
END
GO
