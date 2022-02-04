CREATE TABLE STUDENT(
id int PRIMARY KEY,
name varchar(20),
age int
);

ALTER TABLE STUDENT
Add email varchar(50);

INSERT into STUDENT values(1,'Dipen',23,'dipen.sutariya@gmail.com');
INSERT into STUDENT values(2,'Hrutvik',22,NULL);
INSERT into STUDENT values(3,'Henil',21,'henil@gmail.com');
INSERT into STUDENT values(4,'Darpal',22,'darpal@gmail.com');


select * from STUDENT;
SELECT * FROM STUDENT
ORDER BY age;

SELECT * from STUDENT
where age=22 OR age=21;

SELECT * from STUDENT
where email LIKE '%gmail.com';

SELECT * from STUDENT
where age LIKE '2_';

SELECT COUNT (*) age FROM STUDENT
GROUP BY age;

SELECT DISTINCT age FROM STUDENT;

UPDATE STUDENT
SET name = 'Henil Patel'
WHERE id = 3;

DELETE FROM STUDENT WHERE name='Darpal';

