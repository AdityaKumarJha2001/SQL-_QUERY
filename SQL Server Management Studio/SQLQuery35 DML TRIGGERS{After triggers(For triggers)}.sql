/*                                                      TRIGGER

	A trigger is a special kind of stored procedure that automatically executes when an event occurs in the database server.

	             There are three types of trigger

	1. DML TRIGGERS (DATA MANIPULATION LANGUAGE) INSERT, UPDATE, DELETE
	2. DDL TRIGGERS (DATA DEFINITION OR DATA DESCRIPTION LANGUAGE) CREATE, ALTER
	3. LOGON TRIGGERS


	Dml triggers can be of two types

	1. After triggers (also called For trigger)
	2. Instead of trigger
*/

--   After triggers

use Aditya_123

create table Tbl_Student
(
	S_Id int primary key,
	S_Name varchar(50),
	Gender varchar(50),
	Class int,
	Fees int
)

select * from Tbl_Student

insert into Tbl_Student values(1,'Abc','Male',10,4000)
insert into Tbl_Student values(2,'Hjk','Female',9,3500)
insert into Tbl_Student values(3,'CDr','Male',8,3000)
insert into Tbl_Student values(4,'Iop','Female',10,4000)
insert into Tbl_Student values(5,'Klr','Male',9,3500)
insert into Tbl_Student values(6,'Jhd','Male',5,3000)


create trigger tr_StudentForInsert
on Tbl_Student
after insert
as
begin
	print 'Something happened to the Student Table'
end

insert into Tbl_Student values(7,'Thu','Male',7,3000)

alter trigger tr_StudentForInsert
on Tbl_Student
after insert
as
begin
	select * from inserted
end

insert into Tbl_Student values(8,'Def','Female',8,4000)

create trigger tr_StudentForDelete
on Tbl_Student
after delete
as
begin
	select * from deleted
end

delete from Tbl_Student where S_Id=8

create table Tbl_Student_Audit
(
	Audit_Id int primary key identity, 
	Audit_Info varchar(max)
)

select * from Tbl_Student_Audit

create trigger Tr_Student_Audit_For_Insert
on Tbl_Student
after insert
as 
begin
	Declare @id int
	Select @id = S_Id from inserted

	insert into Tbl_Student_Audit values('Student with id ' + cast(@id as varchar(50)) + ' is added at ' + cast(GETDATE() as varchar(50)))
end

insert into Tbl_Student values(8,'Def','Female',8,4000)

select * from Tbl_Student_Audit

create trigger Tr_Student_Audit_For_Delete
on Tbl_Student
after delete
as 
begin
	Declare @id int
	Select @id = S_Id from deleted

	insert into Tbl_Student_Audit values('Existing Student with id ' + cast(@id as varchar(50)) + ' is deleted at ' + cast(GETDATE() as varchar(50)))
end

delete from Tbl_Student where S_Id=8

select * from Tbl_Student_Audit


create trigger tr_StudentForUpdate
on Tbl_Student
after update
as
begin
	select * from inserted
	select * from deleted
end

update Tbl_Student set S_Name = 'Ghi' where S_Id = 7