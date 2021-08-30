The like operator is used in a where clause to search for a specified pattern in a column.

There are 3 wildcards used in conjuction with the LIKE operator:

% :- The percent sign represents Zero,one,or multiple characters
_ :- The underscore represents a single character
[] :- For multiple character

Where customereName LIKE 'a%' Finds any values that starts with 'a'
Where customereName LIKE 'a%' Finds any values that ends with 'a'
Where customereName LIKE '%or%' Finds any values that have 'or' in any position
Where customereName LIKE '_r%' Finds any values that have 'r' in the second position
Where customereName LIKE 'a%o' Finds any values that starts with 'a' and end with o

use Aditya_123

create table MyEmployee_1
(
	Emp_Id int primary key,
	Emp_Name varchar(50) not null,
	Gender varchar(50) not null,
	Salary int not null,
	City varchar(50) not null,
	Dept_Id int not null
)

select * from MyEmployee_1

insert into MyEmployee_1 values(100, 'Usm', 'Male', 25000, 'Hyderabad', 2)
insert into MyEmployee_1 values(101, 'Ana', 'Male', 45000, 'Karanchi', 1)
insert into MyEmployee_1 values(102, 'Anu', 'Female', 35000, 'Sukkur', 3)
insert into MyEmployee_1 values(103, 'Ali', 'Male', 45000, 'Hyderabad', 4)
insert into MyEmployee_1 values(104, 'Aghar', 'Male', 35000, 'Karanchi', 2)
insert into MyEmployee_1 values(105, 'Gama', 'Male', 25000, 'Sukkur', 1)
insert into MyEmployee_1 values(106, 'Asmara', 'Female', 15000, 'Hyderabad', 3)
insert into MyEmployee_1 values(107, 'Zai', 'Male', 35000, 'Karanchi', 2)
insert into MyEmployee_1 values(108, 'Nmra', 'Female', 35000, 'Sukkur', 1)
insert into MyEmployee_1 values(109, 'Ameer', 'Male', 45000, 'Hyderabad', 4)
insert into MyEmployee_1 values(110, 'sumbul', 'Female', 25000, 'Karanchi', 3)

select * from MyEmployee_1

select * from MyEmployee_1 where Emp_Name like 'a%' 

select * from MyEmployee_1 where Emp_Name like '%a' 

select * from MyEmployee_1 where Emp_Name like '%gh%' 

select * from MyEmployee_1 where Emp_Name like 'a__' 

select * from MyEmployee_1 where Emp_Name like '__a' 

select * from MyEmployee_1 where Emp_Name like '_m%' 

select * from MyEmployee_1 where Emp_Name like '[a,g]%'

select * from MyEmployee_1 where Emp_Name like '[a-s]%' 

select * from MyEmployee_1 where Emp_Name like 'a%a' 





