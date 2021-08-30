use Aditya_123

--sql join--
/*sql joins is used to combine two or more table data in a resultset 

Type of join

1.inner join
2.left join
3.right join
4.full outer join
*/

Create table Employee_1
(
	Emp_Id int unique not null,
	Emp_Name varchar(50) not null,
	Emp_Email varchar(50) not null,
	Designation varchar(50) not null
);

select * from Employee_1

insert into Employee_1 values(11,'Abc','Abc@gmail.com','Manager');
insert into Employee_1 values(12,'Pqr','Pqr@gmail.com','Assistant Manager');
insert into Employee_1 values(13,'Xyz','Xyz@gmail.com','I-T Incharge');
insert into Employee_1 values(14,'Jkl','Jkl@gmail.com','Computer OPerator');
insert into Employee_1 values(15,'Def','Def@gmail.com','Assistant Director');

create table Department_1
(
	Dept_Id int unique not null, Dept_Name varchar(50) not null, Dept_Salary varchar(50) not null, Emp_Id int unique not null
)

select * from Department_1

insert into Department_1 values(111,'Administration','50000',13);
insert into Department_1 values(222,'Accounts','60000',12);
insert into Department_1 values(333,'I-T','40000',11);
insert into Department_1 values(444,'Academic','45000',14);
insert into Department_1 values(555,'Sports','45000',17);

select * from Employee_1
select * from Department_1

--inner join--

select * from Employee_1 as A
inner join Department_1 as B
on a.Emp_Id=B.Emp_Ids;

Select A.Emp_Name, A.Designation, B.Dept_Name, B.Dept_Salary from Employee_1 as A
inner join Department_1 as B
on A.Emp_Id=B.Emp_Ids;

Select A.Emp_Name, A.Designation, B.Dept_Name, B.Dept_Salary from Employee_1 as A
left join Department_1 as B
on A.Emp_Id=B.Emp_Id;

Select A.Emp_Name, A.Designation, B.Dept_Name, B.Dept_Salary from Employee_1 as A
 right join Department_1 as B
on A.Emp_Id=B.Emp_Id;

Select A.Emp_Name, A.Designation, B.Dept_Name, B.Dept_Salary from Employee_1 as A
full outer join Department_1 as B
on A.Emp_Id=B.Emp_Id;



