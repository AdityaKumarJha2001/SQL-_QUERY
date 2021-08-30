use Aditya_123;

select * from Student_Bio_Data;

create table Employee (EmpID int unique not null, EmpName varchar(50) not null, EmpDpt varchar(50) not null, Salary varchar(50) not null);

select * from Employee;

insert into Employee values(1 , 'Abc', 'Cse', '30000');
insert into Employee values(2 , 'Pqr', 'Ee', '30000');
insert into Employee values(3 , 'Mno', 'Eee' , '80000');
insert into Employee values(4 , 'Xyz', 'Me', '60000');
insert into Employee values(5 , 'Def', 'Cse', '100000');
insert into Employee values(6 , 'Tuv', 'Cse', '100000');

delete from Employee where EmpId = 5;

truncate table Employee;

update Employee set Salary = 50000 where EmpID = 2;
update Employee set EmpName = 'Jkl' where EmpID = 6;