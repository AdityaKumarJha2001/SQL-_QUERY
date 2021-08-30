use Aditya_123

create table Voter_Table 
(
	Voter_Id int,
	Voter_Name varchar(50),
	Voter_Age int
);

select * from Voter_Table;

alter table Voter_Table alter column Voter_Name varchar(50) not null ;
alter table Voter_Table alter column Voter_Name varchar(50) null ;

alter table Voter_Table add unique(VOter_Id); 

insert into Voter_Table values (1, 'Abc',25 );
insert into Voter_Table values (1, 'Pqr',30 );

alter table Voter_Table drop constraint [UQ__Voter_Ta__E28827645EC2AF8B];

alter table Voter_Table alter column Voter_Id int not null ;
alter table Voter_Table add primary key (Voter_Id);

alter table Voter_Table drop constraint [PK__Voter_Ta__E2882765DDFFFF19];

create table Voter_2Table
(
	C_Id int,
	C_Name varchar(50),
	Voter_Id int
);

select * from Voter_Table;
select * from Voter_2Table;

alter table Voter_2Table add foreign key (Voter_Id) references Voter_Table(Voter_Id);

alter table Voter_2Table drop constraint [FK__Voter_2Ta__Voter__2CF2ADDF];


alter table Voter_Table add check(Voter_Age>=18);
insert into Voter_Table values (2, 'Abc',18 );

alter table Voter_Table drop constraint [CK__Voter_Tab__Voter__2DE6D218];
insert into Voter_Table values (3, 'Abc',17 );

alter table Voter_Table add default 18 for Voter_Age;
insert into Voter_Table (Voter_Id, Voter_Name) values (4, 'Pqr');

alter table Voter_Table drop constraint [DF__Voter_Tab__Voter__2EDAF651];
insert into Voter_Table (Voter_Id, Voter_Name) values (5, 'Pqr');
update Voter_Table set Voter_Age = 30 where Voter_Id = 5;