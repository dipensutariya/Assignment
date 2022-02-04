create table customer(id int primary key, 
                      name varchar(20),
					  age int,
					  city varchar(50));

insert into customer values(1, 'Dipen',23,'Gandhinagar');
insert into customer values(2, 'Hrutvik',22,'Gandhinagar');
insert into customer values(3, 'Henil',22,'Gandhinagar');
insert into customer values(4, 'Darpal',21,'Gandhinagar');
insert into customer values(5, 'Utsav',21,'Ahemadabad');

select *  from customer

CREATE PROCEDURE spGETCustomer
AS
BEGIN
select * from customer
END
EXEC spGETCustomer

ALTER PROCEDURE spGETCustomer
AS
BEGIN
select * from customer ORDER BY age
END
EXEC spGETCustomer

ALTER PROCEDURE spGETCustomer(@age int)
AS
BEGIN
select * from customer
where age=@age
END
EXEC spGETCustomer @age = 22

ALTER PROCEDURE spGETCustomer(@age int,@acount int output)
AS
BEGIN
select name,city from customer
select @acount=@@ROWCOUNT
END
DECLARE @count int
EXEC spGETCustomer @age = 22,@acount =@count output
select @count AS ' Number of Customer'



CREATE VIEW cus AS select name,age,city from customer
select * from cus

/*Difference between store and procedure
 VIEW
 ->Does not accepts parameters
 ->Can contain only one single Select query.
 ->Can not perform modification to any table.
 ->Can be used (sometimes) as the target for Insert, update, delete queries.
Store Procedure
 ->Accept parameters
 ->Can contain several statement like if, else, loop etc.
 ->Can perform modification to one or several tables.
 ->Can not be used as the target for Insert, update, delete queries
*/
--------------------------error handling store procedure-------------------------------
BEGIN TRY
 DECLARE @count int
 EXEC spGETCustomer @age = 22,@acount =@count output
 select @count AS ' Number of Total Customer'
END TRY
BEGIN CATCH
	print 'error'
	print ERROR_MESSAGE();
END CATCH