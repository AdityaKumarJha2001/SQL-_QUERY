

use Aditya_123

create table Teacher_3
(
	T_Id int primary key,
	T_Name varchar(50),
	Salary int,
	Qualification varchar(50)
)

Select * from Teacher_3

insert into Teacher_3 values(1,'Pqr',34000,'B.Tech')
insert into Teacher_3 values(2,'Ghi',24000,'M.Tech')
insert into Teacher_3 values(3,'Lmn',14000,'Diploma')
insert into Teacher_3 values(4,'Xyz',12000,'P.G.')

create table Student_3
(
	S_Id int primary key,
	S_Name varchar(50),
	class int,
	Fees int,
	T_Id int
)

Select * from Student_3

insert into Student_3 values(101,'Fty',6,4000,2)
insert into Student_3 values(102,'HKY',7,3000,1)
insert into Student_3 values(103,'Der',5,3400,3)
insert into Student_3 values(104,'Khy',7,4000,1)
insert into Student_3 values(105,'Vrt',6,4500,4)


create table Branch_3
(
	B_Id int primary key,
	City varchar(50),
	S_Id int,
)

Select * from Branch_3

insert into Branch_3 values(1001,'Ranchi',103)
insert into Branch_3 values(2002,'Patna',104)
insert into Branch_3 values(3003,'Bokaro',101)


select * from Teacher_3
inner join Student_3
on Teacher_3.T_Id = Student_3.T_Id
inner join Branch_3
on Student_3.S_Id=Branch_3.S_Id