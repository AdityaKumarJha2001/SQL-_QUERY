
use Aditya_123

create table MyEmployee_2
(
	Emp_Id int primary key,
	Emp_Name varchar(50) not null,
	Gender varchar(50) not null,
	Salary int not null,
	City varchar(50) not null,
)

select * from MyEmployee_2

insert into MyEmployee_2 values(100, 'Usm', 'Male', 25000, 'Hyderabad')
insert into MyEmployee_2 values(101, 'Ana', 'Male', 45000, 'Karachi')
insert into MyEmployee_2 values(102, 'Anu', 'Female', 35000, 'Ranchi')
insert into MyEmployee_2 values(103, 'Ali', 'Male', 45000, 'Hyderabad')
insert into MyEmployee_2 values(104, 'Aghar', 'Male', 35000, 'Karachi')
insert into MyEmployee_2 values(105, 'Gama', 'Male', 25000, 'Ramgarh')
insert into MyEmployee_2 values(106, 'Asmara', 'Female', 15000, 'Hyderabad')
insert into MyEmployee_2 values(107, 'Zai', 'Male', 35000, 'Karachi')
insert into MyEmployee_2 values(108, 'Nmra', 'Female', 35000, 'Hazaribag')
insert into MyEmployee_2 values(109, 'Ali', 'Male', 45000, 'Hyderabad')

select * from [dbo].[MyEmployee_2]

select * from MyEmployee_2 where Salary between 25000 and 35000

select Top 5 * from MyEmployee_2

select Top 80 percent * from MyEmployee_2

select distinct Emp_Name from MyEmployee_2  

select distinct City from MyEmployee_2

select * from MyEmployee_2 where City in ('Hyderabad' , 'Ranchi')

select * from MyEmployee_2 where City not in ('Hyderabad' , 'Ranchi')