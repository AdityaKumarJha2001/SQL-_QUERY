--1.Sub Query or inner query or a Nested query within another SQL query and embedded within the WHERE clause.
--2.A Subquery is used to return data that will be used in the main query as a condition to further resstrict the data to be retrived.
--3 There are a few rules that subqueries must follow
--	# Subqueries must be enclosed within parenthese ().
--	# A subquery can have only one column in the SELECT clause,unless multiple columns are in the main query for the subquery to compare its selected columns.
--  # An ORDER BY command cannot be used in a subquery, although the main query can use an ORDER BY. 
--  # Subquery that return more than one row can only be used with multiple value operators such as the IN operator.
--	# We can use subquery with two tables also.
--	# We can also update and delete with subquery.
--	#  We can display particular columns in outer query with subquery. 
use Aditya_123

Create table MyEmployee
(
	Emp_Id int primary key,
	Emp_Name varchar(50) not null,
	Gender varchar(50) not null,
	Salary int not null,
	City varchar(50),
	Dept_Id int 
)

Select * from MyEmployee

insert into MyEmployee values(100,'Abc','Male',25000,'Hyderabad',2)
insert into MyEmployee values(101,'Pqr','Male',45000,'Ranchi',1)
insert into MyEmployee values(102,'Mno','Female',35000,'Giridih',3)
insert into MyEmployee values(103,'Jkl','Male',45000,'Hyderabad',4)
insert into MyEmployee values(104,'Def','Male',35000,'Ranchi',2)
insert into MyEmployee values(105,'Xyz','Male',25000,'Giridih',1)


Create table MyDepartment
(
	Id int primary key,
	Dept_Name varchar(50) not null,
)

select * from MyDepartment

insert into MyDepartment values(1,'Accounts')
insert into MyDepartment values(2,'HR')
insert into MyDepartment values(3,'Administration')
insert into MyDepartment values(4,'Counselling')

select * from MyEmployee
select * from MyDepartment

select * from MyEmployee
where Emp_Id in
(select Emp_Id from MyEmployee where salary>30000)

select * from MyEmployee
where Emp_Id in
(select Emp_Id from MyEmployee where city = 'Hyderabad')

select Emp_Name,Gender,Salary from MyEmployee
where Emp_Id in
(select Emp_Id from MyEmployee where salary>30000)

update MyEmployee set Salary = Salary + 2000
where Emp_Id in
(select Emp_Id from MyEmployee where city = 'Ranchi')

 delete from MyEmployee
where Emp_Id in
(select Emp_Id from MyEmployee where city = 'Ranchi')

drop table MyEmployee

select * from MyEmployee
where Dept_Id in
(select id from MyDepartment where Dept_Name = 'Accounts')



select Emp_Name,Gender,Salary from MyEmployee
where Emp_Id in
(select Emp_Id from MyEmployee where salary>30000 order by Emp_Id) -- order by cannot be used subquery


select * from MyEmployee
where Emp_Id in
(select Emp_Id from MyEmployee where salary>30000)
order by Emp_Id desc