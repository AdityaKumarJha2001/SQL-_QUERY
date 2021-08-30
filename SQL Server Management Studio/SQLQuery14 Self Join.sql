create table Employee_Manager
(
	Emp_Id int primary key,
	Emp_Name varchar(50) not null,
	Manager_Id int
);

insert into Employee_Manager values(1,'Abc',4);
insert into Employee_Manager values(2,'Def',4);
insert into Employee_Manager values(3,'Pqr',5);
insert into Employee_Manager values(4,'Xyz',6);
insert into Employee_Manager values(5,'Jkl',1);
insert into Employee_Manager values(6,'Mno',1);

select * from Employee_Manager

select A.Emp_Name as Manager,B.Emp_Name as Employee from Employee_Manager as A
inner join Employee_Manager as B
on A.Manager_Id=B.Emp_Id;


select A.Emp_Name as Employee,B.Emp_Name as Manager from Employee_Manager as A
inner join Employee_Manager as B
on A.Emp_Id=B.Manager_Id;