use Aditya_123;

create table Customer_tbl
(
	C_Id int primary key,
	C_Name varchar(50),
	C_Address varchar(max),
	City varchar(50)
);

select * from Customer_tbl;

insert into Customer_tbl values(1,'Abc','Giridih','Giridih');
insert into Customer_tbl values(2,'Jkl','Bokaro','Bokaro');
insert into Customer_tbl values(3,'Pqr','Ranchi','Ranchi');
insert into Customer_tbl values(4,'Xyz','Ramgarh','Ramgarh');

create table [order]
(
	Ord_Id int primary key,
	Item varchar(50),
	Quantity int,
	Price_of_1 int,
	C_Id int foreign key references Customer_tbl(C_Id)
);

select * from [Order];

insert into [order] values (111,'Mob',2,8000,3);
insert into [order] values (222,'Ram',1,400,2);
insert into [order] values (333,'Keyboard',1,700,1);
insert into [order] values (444,'Mouse',3,500,4);
insert into [order] values (555,'Speaker',5,400,2);
insert into [order] values (666,'Usb',1,200,4);


select * from Customer_tbl;
select * from [Order];

--How to drop foreign key with alter statement

alter table [Order] drop constraint FK__order__C_Id__14270015;

--Creating foreign key in existing table alter statement

alter table [Order] add foreign key (C_Id) references Customer_tbl(C_Id);
