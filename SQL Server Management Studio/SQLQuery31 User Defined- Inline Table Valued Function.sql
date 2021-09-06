/*                                            INLINE TABLE VALUED FUNCTION

	# Contain a single TSQL statement and returns a Table Set. (it return a Table)

	                                STEPS TO CREATE INLINE TABLE VALUED FUNCTION

	# Step1:- We have to specify table as the return type, insted of any scalar datatype like int,varchar etc.
	# Step2:- There is no begin and end block
	# Step3:- The table that gets returned, is determined by the select command within the function.
*/

use Aditya_123

create Table Student_1
(
	Std_Id int primary key identity,
	Std_Name varchar(50) not null,
	Gender varchar(50) not null,
	Age int not null,
	class int not null,
	T_Id int not null
)

select * from Student_1

insert into Student_1 values ('Abc', 'Male', 18, 11, 10)
insert into Student_1 values ('Pqr', 'Male', 17, 10, 20)
insert into Student_1 values ('Jkl', 'Female', 20, 12, 30)
insert into Student_1 values ('Tuv', 'Male', 16, 9, 15)
insert into Student_1 values ('Def', 'Male', 17, 8, 25)
insert into Student_1 values ('Rst', 'Male', 15, 7, 10)
insert into Student_1 values ('Nmo', 'Female', 18, 11, 20)
insert into Student_1 values ('Klm', 'Female', 19, 12, 40)
insert into Student_1 values ('Tuv', 'Female', 17, 10, 50)

create Table Teacher_1
(
	T_Id int primary key ,
	T_Name varchar(50) not null,
	T_Qualification varchar(50) not null,
	T_Age int not null,
)

select * from Teacher_1

insert into Teacher_1 values(10, 'Ghi', 'B.tech.', 28)
insert into Teacher_1 values(15, 'Stu', 'M.tech.', 28)
insert into Teacher_1 values(20, 'Wxy', 'B.tech.', 28)
insert into Teacher_1 values(25, 'Xyz', 'Bca', 28)
insert into Teacher_1 values(30, 'Vwx', 'Mba', 28)

create function fn_GetStudents()             ----create a  INLINE TABLE VALUED FUNCTION without parameter
returns table
as
return (select * from Student_1)

select * from dbo.fn_GetStudents()
select * from fn_GetStudents()

drop function fn_GetStudents

create  function fn_GetStudentsWithAge(@Age int)           ---- create a INLINE TABLE VALUED FUNCTION with a single parameter
returns table
as
return(select * from Student_1 where Age >= @Age)

select * from fn_GetStudentsWithAge(18)

select* from fn_GetStudentsWithAge(18) as A              --INLINE TABLE VALUED FUNCTION with join
inner join Teacher_1
on A.T_Id = Teacher_1.T_Id


