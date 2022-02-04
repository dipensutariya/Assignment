create table students(std_id int primary key, 
                      std_name varchar(20));

insert into students values(1, 'Hrutvik');
insert into students values(2, 'Dipen');
insert into students values(3, 'Utsav');
insert into students values(4, 'Henil');
insert into students values(5, 'Darpal');
insert into students values(6, 'Suraj');

select * from students

create table marks(school_id int primary key, std_id int, 
                       score int, status varchar(20));

insert into marks values(1004, 1, 23, 'fail');
insert into marks values(1008, 6, 95, 'pass');
insert into marks values(1012, 2, 97, 'pass');
insert into marks values(1020, 3, 100, 'pass');
insert into marks values(1030, 4, 88, 'pass');
insert into marks values(1040, 5,  16, 'fail');
insert into marks values(1041,7,77,'pass')

select * from marks

create table details(address varchar(20), email_ID varchar(20), 
                      school_id int);

insert into details values('Gandhinagar',  'utsav@gmail.com', 1020);
insert into details values('Urvasad', 'henil@gmail.com', 1030);
insert into details values('Gandhinagar','dipen@gmail.com', 1012);
insert into details values('Ahmedabad', ' suraj@gmail.com',1008);
insert into details values('Mumbai','abhijeet',1111);


select * from details

select std_name, score, status, address, email_id from students s inner join marks m on
s.std_id = m.std_id INNER JOIN details d on 
d.school_id = m.school_id;

SELECT std_name,status from students s
LEFT JOIN marks m
ON s.std_id = m.std_id LEFT JOIN details d on
d.school_id=m.school_id;

SELECT std_name,status from students s
RIGHT JOIN marks m
ON s.std_id = m.std_id RIGHT JOIN details d on
d.school_id=m.school_id;

SELECT std_name,status from students s
FULL JOIN marks m
ON s.std_id = m.std_id FULL JOIN details d on
d.school_id=m.school_id;
