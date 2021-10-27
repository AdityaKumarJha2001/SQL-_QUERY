/*                                                 NON-CLUSTERED INDEX 
 
 # A NON-CLUSTERED INDEX IS AS SAME AS TO AN INDEX OF A BOOK.
 # THE DATA IS STORED IN ONE PLACE, AND INDEX IS STORED IN ANOTHER PLACE.
 # SINCE, THE NON-CLUSTERED INDEX IS STORED IS STORED SEPERATELY FROM THE ACTUAL DATA, A TABLE CAN HAVE MORE THAN ONE NON-CLUSTERED INDEX.

 */

use Aditya_123

create table Full_Time_Employee2
(
	F_Id int primary key,
	F_Name varchar(50) not null,
	Gender varchar(50) not null,
	City varchar(50) not null,
	Salary int not null
)

select * from Full_Time_Employee2

insert into Full_Time_Employee2 values (2,'Abc','Female','Ranchi',20000)
insert into Full_Time_Employee2 values (4,'Pqr','Female','Bokaro',15000)
insert into Full_Time_Employee2 values (1,'Xyz','Male','Ramgarh',25000)
insert into Full_Time_Employee2 values (5,'Mno','Male','Giridih',45000)
insert into Full_Time_Employee2 values (3,'Jkl','Male','Deoghar',35000)

create index Nix_Fte_Name_Non_Clustered
on Full_Time_Employee2 (F_Name Asc)

create nonclustered index Nix_Fte_Salary_Non_Clustered
on Full_Time_Employee2 (Salary Asc)

sp_helpindex Full_Time_Employee2

drop index Full_Time_Employee2.Nix_Fte_Id_Non_Clustered