 /*                                           DML INSTEAD OF TRIGGER
  INSTEAD OF TRIGGER IS EXECUTED IN PLACE OF THE INSERT,UPDATE OD DELETE OPERATION.
  INSTEAD OF TRIGGERS ARE EXECUTED BEFORE CONSTRAINT CHECKS ARE PERFORMED ON THE TABLE AND AFTER THE CREATION OF THE INSERTED AND DELETED TABLES. 
  A DML TRIGGER CAN BE ENCRYPTED TO HIDE ITS DEFINITION OR QUERY BY USING WITH ENCRYPTION COMMAND.
*/
use Aditya_123

create table Tbl_Customer
(
	C_Id int primary key,
	C_Name varchar(50),
	Gender varchar(50),
	City varchar(50),
	Contact_no int 
)

select * from Tbl_Customer

insert into Tbl_Customer values (1,'Abc','Male','Hyderabad',0023698171)
insert into Tbl_Customer values (2,'Ghe','Female','Ranchi',0023698200)
insert into Tbl_Customer values (3,'Klp','Male','Patna',0023698475)
insert into Tbl_Customer values (4,'Kli','Female','Hyderabad',0023698444)
insert into Tbl_Customer values (5,'Def','Male','Ranchi',0023698542)
insert into Tbl_Customer values (6,'Dsw','Male','Patna',0023698254)

create trigger tr_Customer_Insted_Of_Insert
on Tbl_Customer
instead of insert
as
begin
	print 'You are not allowed to insert data in this table'
end

insert into Tbl_Customer values (7,'Dsw','Male','Patna',0023698254)



create trigger tr_Customer_Insted_Of_Update
on Tbl_Customer
instead of update
as
begin
	print 'You are not allowed to update data in this table'
end

update Tbl_Customer set C_Name = 'Xyz' where C_Id = 6

create trigger tr_Customer_Insted_Of_Delete
on Tbl_Customer
instead of Delete
as
begin
	print 'You are not allowed to delete anything in this table'
end

delete from Tbl_Customer where C_Id = 6

create table Customer_Audit_table
(
	Audit_Id int primary key identity,
	Audit_Information varchar(max)
)

select * from Customer_Audit_table

drop trigger tr_Customer_Insted_Of_Insert


create trigger tr_Customer_Insted_Of_Insert_Audit
on Tbl_Customer
instead of insert
as
begin
	insert into Customer_Audit_table values( 'Someone tries to insert data in customer table at: ' + cast(GETDATE() as varchar(50)))
end


insert into Tbl_Customer values (7,'Dsw','Male','Patna',0023698254)

select * from Customer_Audit_table

drop trigger tr_Customer_Insted_Of_Update

create trigger tr_Customer_Insted_Of_Update_Audit
on Tbl_Customer
instead of update
as
begin
	insert into Customer_Audit_table values( 'Someone tries to update data in customer table at: ' + cast(GETDATE() as varchar(50)))
end

update Tbl_Customer set C_Name = 'Xyz' where C_Id = 6

select * from Customer_Audit_table

drop trigger tr_Customer_Insted_Of_Delete

create trigger tr_Customer_Insted_Of_Delete_Audit
on Tbl_Customer
instead of Delete
as
begin
	insert into Customer_Audit_table values( 'Someone tries to delete data from customer table at: ' + cast(GETDATE() as varchar(50)))
end

delete from Tbl_Customer where C_Id = 6

select * from Customer_Audit_table

