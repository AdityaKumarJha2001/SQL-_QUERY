--                                           Stored Procedure

-- A stored procedure is a set of structured query language (SQL) statements with an assigned name, which are stored in a relational database-
-- management system as a relational database management system as a group, so it can be reused and shared by multiple programs. 

--  Type of Stored Procedure

-- System stored pocedures
-- Used-Defined stored procedure

-- Microsoft uses Sp_Prefix for system stored procedure


use Aditya_123

select * from MyEmployee

create procedure spgetemployee
as
begin
select Emp_Name, Gender from MyEmployee
end

--type of execute Sp(Stored procedure)
spgetemployee
exec spgetemployee
execute spgetemployee


-- Stored procedure with single parameter

create procedure spGet_Employee_By_Id
@id int                                            --@id is a variable
as 
begin
select * from MyEmployee where Emp_Id = @id
end

execute spGet_Employee_By_Id 103

-- Stored procedure with multiple parameter

create procedure spGet_Employee_By_Id_Name
@id int,
@name varchar(50)
as
begin
select* from MyEmployee where Emp_Id = @id and Emp_Name = @Name
end

execute spGet_Employee_By_Id_Name 104, 'Def'

--Alter with stored Procedure

alter procedure spGet_Employee_By_Id
@id int                                            --@id is a variable
as 
begin
select Emp_Name,Salary from MyEmployee where Emp_Id = @id
end

execute spGet_Employee_By_Id 103


sp_helptext spGet_Employee_By_Id   -- View Query 

--using with encryption in stored procedure

alter procedure spGet_Employee_By_Id
@id int										--@id is a variable
with encryption
as 
begin
select Emp_Name,Salary from MyEmployee where Emp_Id = @id
end

sp_helptext spGet_Employee_By_Id  --secure query

--drop with stored procedrue

drop procedure spGet_Employee_By_Id_Name




