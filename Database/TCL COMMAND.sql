BEGIN TRANSACTION

insert into students values(7,'Samir')
ROLLBACK TRANSACTION
select * from students

BEGIN TRANSACTION

insert into students values(8,'Jay')
insert into students values(9,'Raj')
select * from students
COMMIT TRANSACTION
