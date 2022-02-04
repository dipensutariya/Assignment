CREATE PROCEDURE spGETStudent
AS
BEGIN
select * from students
END
EXEC spGETStudent

ALTER PROCEDURE spGETSTUDENT
AS
BEGIN
select * from students ORDER BY std_name
END
EXEC spGETSTUDENT

ALTER PROCEDURE spGETSTUDENT(@sid int)
AS
BEGIN
select * from students
where std_id=@sid
END

EXEC spGETSTUDENT @sid=1

