create table product(
id int,
name varchar(20),
price int
)

insert into product values(1,'Chocolate',80)
insert into product values(2,'Shampoo',10)
insert into product values(3,'Soap',30)
insert into product values(4,'Hair Oil',120)

select * from product

SELECT COUNT(name) AS NumberOfProducts FROM product
SELECT AVG(price) AS AveragePrice FROM product
SELECT MAX(price) AS MaxPrice FROM product
SELECT MIN(price) AS MinPrice FROM product
SELECT Sum(price) AS SumOfPrice FROM product
SELECT UPPER(name) FROM product
SELECT LOWER(name) FROM product
SELECT LEFT(name, 2) AS ExtractString FROM product
SELECT RIGHT(name, 3) AS ExtractString FROM product
SELECT REVERSE(name) FROM product
SELECT SUBSTRING(name, 2, 2) AS SubtractString FROM product

