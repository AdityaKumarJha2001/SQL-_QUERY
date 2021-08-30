use Aditya_123

create table Aggregate_Tbl
(
	Id int primary key identity,
	Name varchar(60) not null,
	salary int not null
)

select * from Aggregate_Tbl

insert into Aggregate_Tbl values('Abc',20000)
insert into Aggregate_Tbl values('Jkl',30000)
insert into Aggregate_Tbl values('Mno',15000)
insert into Aggregate_Tbl values('Pqr',20000)
insert into Aggregate_Tbl values('Xyz',15000)


select sum(salary) from Aggregate_Tbl
select sum(salary) as Total_Salary from Aggregate_Tbl
select Max(salary) as Maximum_Salary from Aggregate_Tbl
select min(salary) as Minimum_salary from Aggregate_Tbl
select avg(salary) as average_Salary from Aggregate_Tbl
select Count(salary) as Total_Row from Aggregate_Tbl

select avg(Id) from Aggregate_Tbl

create table Aggregate_Tbl1
(
	Id int primary key identity,
	Name varchar(60) not null,
	salary int not null
)

select * from Aggregate_Tbl1


insert into Aggregate_Tbl1 values('Abc',2)
insert into Aggregate_Tbl1 values('Jkl',3)
insert into Aggregate_Tbl values('Mno',15000)
insert into Aggregate_Tbl values('Pqr',20000)
insert into Aggregate_Tbl values('Xyz',15000)

select avg(salary) from Aggregate_Tbl1