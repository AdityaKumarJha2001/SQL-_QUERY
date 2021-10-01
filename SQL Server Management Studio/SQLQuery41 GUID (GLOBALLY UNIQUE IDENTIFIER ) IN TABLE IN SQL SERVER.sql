/*                                   GUID(GLOBALLY UNIQUE IDENTIFIER)
	A GUID IA A 16 BYTE BINARY DATA TYPE THAT IS GLOBALLY UNIQUE.
	TO CREATE A GUID IN SQL SERVER USE NEWID() FUNCTION
	SELECT NEWID() CREATES A GUID THAT ISGUARANTEED TO BE UNIQUE ACROSS TABLES, DATABASE AND SERVER.
*/


use Aditya_123

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
