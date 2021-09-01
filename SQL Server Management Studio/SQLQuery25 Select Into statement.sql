--	The SELECT INTO statement in sql server, selects the data from one table and inserts it into a new table.
--	Mostly it used to create backups of the table.
--	We can copy all the rows and columns from an existing table into a new table.
--	We can copy selected columns into a new table.
--	We can copy selected rows into a new table.
--	Copy columns from 2 or more tables into a new tables (using joins), all columns or selected columns.
--	We can copy data from one database table and the paste it to another database new table.

use Aditya_123

select * from MyEmployee
select * from MyDepartment


select * into Employee_Backup from MyEmployee

select * from Employee_Backup

select Emp_Id, Emp_Name,Salary into Employeee_Backup from MyEmployee

select * into Employee_Backup from MyEmployee
where City = 'Ranchi'

drop table Employee_Backup

select A.*, B.Dept_Name into Employee_Backup from MyEmployee as A
inner join MyDepartment as B
on A.Dept_Id = B.Id

select * into Aditya_12345.dbo.My_Employee_Data from MyEmployee

select * into Employee_Backup from MyEmployee where 1<>1
