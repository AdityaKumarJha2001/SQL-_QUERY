/*                                   GUID(GLOBALLY UNIQUE IDENTIFIER)
	A GUID IA A 16 BYTE BINARY DATA TYPE THAT IS GLOBALLY UNIQUE.
	TO CREATE A GUID IN SQL SERVER USE NEWID() FUNCTION
	SELECT NEWID() CREATES A GUID THAT ISGUARANTEED TO BE UNIQUE ACROSS TABLES, DATABASE AND SERVER.
*/


use Aditya_123

create table Customer_Hyderabad (Ch_Id int primary key identity, Ch_Name varchar(50))

insert into Customer_Hyderabad values ('Abc')
insert into Customer_Hyderabad values ('Pqr')
insert into Customer_Hyderabad values ('Jkl')

select * from Customer_Hyderabad

create table Customer_Karanchi (Ch_Id int primary key identity, Ch_Name varchar(50))

insert into Customer_Karanchi values ('Hju')
insert into Customer_Karanchi values ('Jo')
insert into Customer_Karanchi values ('Ko')

select * from Customer_Karanchi

create table Customers (C_Id int primary key, C_NAme varchar(50))

select * from Customers

insert into Customers
Select * from Customer_Hyderabad
union all
select * from Customer_Karanchi


                                              --GUID

create table Customer_Hyderabad1 (Ch_Id uniqueidentifier primary key default newid(), Ch_Name varchar(50))

insert into Customer_Hyderabad1 values (default,'Abc')
insert into Customer_Hyderabad1 values (default,'Pqr')
insert into Customer_Hyderabad1 values (default,'Jkl')

select * from Customer_Hyderabad1

create table Customer_Karanchi1 (Ch_Id uniqueidentifier primary key default newid(), Ch_Name varchar(50))

insert into Customer_Karanchi1 values (default,'Hju')
insert into Customer_Karanchi1 values (default,'Jo')
insert into Customer_Karanchi1 values (default,'Ko')

select * from Customer_Karanchi1

create table Customers1 (C_Id uniqueidentifier primary key default newid(), C_NAme varchar(50))


insert into Customers1
Select * from Customer_Hyderabad1
union all
select * from Customer_Karanchi1


select * from Customers1

select newid()
