/*                                                              CLUSTERED INDEX
															  
 # A CLUSTERED INDEX CAUSES RECOARDS TO BE PHYSICALLY STORED IN A SORTED OR SEQUENTIAL ORDER.
 # WE CAN HAVE ONLY ONE CLUSTERED INDEX IN ONE TABLE, BUT WE CAN HAVE ONE CLUSTERED INDEX ON MULTIPLE COLUMNS, AND THAT TYPE OF INDEX IS COMPISITE INDEX.

 */

use Aditya_123

create table Full_Time_Employee1
(
	F_Id int,
	F_Name varchar(50) not null,
	Gender varchar(50) not null,
	City varchar(50) not null,
	Salary int not null
)

select * from Full_Time_Employee1

insert into Full_Time_Employee1 values (2,'Abc','Female','Ranchi',20000)
insert into Full_Time_Employee1 values (4,'Pqr','Female','Bokaro',15000)
insert into Full_Time_Employee1 values (1,'Xyz','Male','Ramgarh',25000)
insert into Full_Time_Employee1 values (5,'Mno','Male','Giridih',45000)
insert into Full_Time_Employee1 values (3,'Jkl','Male','Deoghar',35000)

create clustered index Ix_Fte_Id_Clustered
on Full_Time_Employee1 (F_Id Asc)

