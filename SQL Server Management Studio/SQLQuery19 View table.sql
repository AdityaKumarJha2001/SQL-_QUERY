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

Select * from MyEmployee
select * from MyDepartment

create view vw_ForEmployee
as
select * from MyEmployee as A
inner join MyDepartment as B
on B.Id = A.Dept_Id

select * from vw_ForEmployee

create view vw_Foremployee1
as
select a.*,b.Dept_Name from MyEmployee as A
inner join MyDepartment as B
on B.Id = A.Dept_Id

select * from vw_ForEmployee1

create view vw_Foremployee2
as
select a.Emp_Id,A.Emp_Name,A.Gender,A.City,A.Dept_Id,b.Dept_Name from MyEmployee as A
inner join MyDepartment as B
on B.Id = A.Dept_Id

select * from vw_ForEmployee2


create view vw_Foremployee3
as
select A.*,B.Dept_Name from MyEmployee as A
inner join MyDepartment as B
on B.Id = A.Dept_Id
where Dept_Name = 'HR'

select * from vw_Foremployee3

sp_helptext vw_Foremployee3 --Show code

alter view vw_Foremployee3
as
select A.*,B.Dept_Name from MyEmployee as A
inner join MyDepartment as B
on B.Id = A.Dept_Id
where Dept_Name = 'HR' or Dept_Name = 'Accounts'

select * from vw_Foremployee3

drop view vw_ForEmployee3

create view Vw_Foremployee4
as 
select * from MyEmployee

select * from Vw_Foremployee4

insert into Vw_Foremployee4 values (106,'Ghi','Female',45000,'Ramgarh',2)

update Vw_Foremployee4 set Emp_Name = 'Fgh' where Emp_Id=106

delete from Vw_Foremployee4 where Emp_Id = 106

create view Vw_Foremployee5
as 
select Emp_Id, Emp_Name, Gender from MyEmployee

select * from Vw_Foremployee5






