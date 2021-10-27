/*                                                 INDEX IN SQL SERVER

 # AN INDEX IN SQL SERVER DATABASE CONTAINS INFORMATION THAT ALLOWS YOU TO FIND SPECIFIC DATA WITHOUT SCANNING THROUGH ENTIRE TABLE.
 # INDEXES ARE CREATED ON TABLES VIEWS
 # CREATE INDEXES ON COLUMNS THAT WILL BE FREQUENTLY SEARCHED AGAINST.
 # AN INDEX IS A POINTER TO DATA IN A TABLE.
 # AN INDEX HELPS TO SPEED UP SELECT QUERIES AND WHERE CLAUSES, BUT IT SLOWS DOWN DATA INPUT, WITH THE UPDATE AND THE INSERT STATEMENT.
   INDEXES CAN BE CREATED OR DROPPED WITH NO EFFECT ON THE DATA.
 # INDEXES ARE AUTOMATICALLY CREATED WHEN PRIMARY KEY AND UNIQUE CONSTRAINTS ARE DEFINED ON A TABLE.
 # SP_HELPINDEX SYSTEM STORE PROCEDURE USED TO FIND INDEXES ON A TABLE.

*/

use Aditya_123

create table Full_Time_Employee
(
	F_Id int primary key,
	F_Name varchar(50) not null,
	Gender varchar(50) not null,
	City varchar(50) not null,
	Salary int not null
)

select * from Full_Time_Employee

insert into Full_Time_Employee values (1,'Abc','Male','Ranchi',25000)
insert into Full_Time_Employee values (2,'Pqr','Female','Bokaro',20000)
insert into Full_Time_Employee values (3,'Xyz','Male','Ramgarh',35000)
insert into Full_Time_Employee values (4,'Mno','Female','Giridih',15000)
insert into Full_Time_Employee values (5,'Jkl','Male','Deoghar',45000)

create index Ix_Fte_Salary
on Full_Time_Employee (Salary asc);

sp_helpindex Full_Time_Employee

select * from Full_Time_Employee
where Salary > 10000 and Salary < 22000

drop index Full_Time_Employee.Ix_Fte_Salary


/*                      WHEN SHOULD INDEXES BE AVOIDED?

 # INDEXES SHOULD NOT BE USED ON SMALL TABLES.
 # TABLES THAT HAVE FREQUENT, LARGE BATCH UPDATES OR INSERT OPERATIONS.
 # INDEXES SHOULD NOT BE USED ON COLUMNS THAT CONTAIN A HIGH NUMBER OF NULL VALUES.
 # COLUMNS THAT ARE FREQUENTLY MANIPULATED SHOULD NOT BE INDEXED.

*/