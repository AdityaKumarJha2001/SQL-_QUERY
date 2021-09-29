
use Aditya_123

create table Employee_Personal_Details
(
	Emp_Id int primary key,
	First_Name varchar(50),
	Last_Name varchar(50),
	Emp_Address varchar(50)
)

select * from Employee_Personal_Details

insert into Employee_Personal_Details values(1,'Agd','Gfd','Ranchi')
insert into Employee_Personal_Details values(2,'Ght','Kli','Patna')
insert into Employee_Personal_Details values(3,'Cde','Lko','Bokaro')
insert into Employee_Personal_Details values(4,'Nmb','Mjh','Ramgarh')

create table Employee_Salary_Details
(
	Emp_Id int primary key,
	Designation varchar(50),
	Salary int,
)

select * from Employee_Salary_Details

insert into Employee_Salary_Details values(1,'Accountant',35000)
insert into Employee_Salary_Details values(2,'Manager',45000)
insert into Employee_Salary_Details values(3,'Admin',50000)
insert into Employee_Salary_Details values(4,'Incharge',25000)


select * from Employee_Personal_Details
select * from Employee_Salary_Details

create view vw_Employee
as
select Employee_Personal_Details.Emp_Id, Employee_Personal_Details.First_Name, Employee_Personal_Details.Last_Name,
Employee_Salary_Details.Designation, Employee_Salary_Details.Salary from Employee_Personal_Details
inner join Employee_Salary_Details
on Employee_Personal_Details.Emp_Id = Employee_Salary_Details.Emp_Id

select * from vw_Employee

create trigger tr_Instead_Of_Employee_Details
on vw_Employee
instead of delete
as
begin
	delete from Employee_Personal_Details where Emp_Id in (select Emp_Id from deleted)
	delete from Employee_Salary_Details where Emp_Id in (select Emp_Id from deleted)
end

delete from vw_Employee where Emp_Id = 4


