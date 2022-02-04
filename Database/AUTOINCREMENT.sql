CREATE TABLE Employee (
    Empid int IDENTITY(1,1) PRIMARY KEY,
	name varchar(50),
    Age int
);

insert into Employee(name,age) values('Dipen',23)
insert into Employee(name,age) values('Hrutvik',22)
insert into Employee(name,age) values('Henil',21)
insert into Employee(name,age) values('Darpal',20)

select * from Employee