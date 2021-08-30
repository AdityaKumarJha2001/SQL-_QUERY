use Aditya_123;

//(primary key:- A combination of a NOT NULL and UNIQUE)

create table Voter_list (Voter_Id int primary key, Voter_Name varchar(50) not null, Voter_Age int not null);

select * from Voter_list;

insert into Voter_list values(1, 'Rakesh', 20);
insert into Voter_list values(2, 'Manish', 25);


