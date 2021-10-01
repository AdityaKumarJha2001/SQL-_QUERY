--                                   GUID(GLOBALLY UNIQUE IDENTIFIER) IN DATABASE



use Aditya_12345

                                        --GUID

create table Customer_Hyderabad5 (Ch_Id uniqueidentifier primary key default newid(), Ch_Name varchar(50))

insert into Customer_Hyderabad5 values (default,'Abc')
insert into Customer_Hyderabad5 values (default,'Pqr')
insert into Customer_Hyderabad5 values (default,'Jkl')

select * from Customer_Hyderabad5

USE Aditya_123

create table Customer_Karanchi5 (Ch_Id uniqueidentifier primary key default newid(), Ch_Name varchar(50))

insert into Customer_Karanchi5 values (default,'Hju')
insert into Customer_Karanchi5 values (default,'Jo')
insert into Customer_Karanchi5 values (default,'Ko')

select * from Customer_Karanchi5

create table Customers5 (C_Id uniqueidentifier primary key default newid(), C_NAme varchar(50))


insert into Customers5
Select * from Aditya_12345.DBO.Customer_Hyderabad5
union all
select * from Aditya_123.DBO.Customer_Karanchi5


select * from Customers5

select newid()
