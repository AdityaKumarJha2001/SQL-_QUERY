use Aditya_123;

select * from Voter_list;

drop table Voter_list;

create table Voter_list (Voter_Id int primary key, Voter_Name varchar(50) not null, Voter_Age int not null check(Voter_Age >= 18), Voter_Add varchar(100) not null default('Jkl'));


insert into Voter_list values(8 , 'Abc', 20, 'ter');
insert into Voter_list (Voter_Id, Voter_Name, Voter_Age) values(7 , 'Pqr', 20);
insert into Voter_list (Voter_Id, Voter_Name, Voter_Age) values(1 , 'Xyz', 25);

delete from Voter_list where Voter_Id = 6;