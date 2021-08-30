use Aditya_123

create table Teacher_tbl 
(
	T_Id int primary key identity, 
	T_Name varchar(50) not null,
	T_Qualification varchar(50) not null, 
	T_Salary varchar(50) not null
)

select * from Teacher_tbl

insert into Teacher_tbl values('Abc','M.tech','90000')
insert into Teacher_tbl values('Jkl','Diploma','40000')
insert into Teacher_tbl values('Pqr','B.tech','70000')
insert into Teacher_tbl values('Mno','B.tech','85000')


create table Teacher_tbl2 
(
	T_Id int primary key identity(100,5), 
	T_Name varchar(50) not null,
	T_Qualification varchar(50) not null, 
	T_Salary varchar(50) not null
)

select * from Teacher_tbl2

insert into Teacher_tbl2 values('Abc','M.tech','90000')
insert into Teacher_tbl2 values('Jkl','Diploma','40000')
insert into Teacher_tbl2 values('Pqr','B.tech','70000')
insert into Teacher_tbl2 values('Mno','B.tech','85000')