use Aditya_123

create table Hocky_Participants 
(
	Id int not null, 
	Name varchar(50), 
	Email varchar(100)
)

select * from Hocky_Participants

insert into Hocky_Participants values(1, 'Abc', 'Abc@gmail.com')
insert into Hocky_Participants values(2, 'Pqr', 'Pqr@gmail.com')
insert into Hocky_Participants values(3, 'Mno', 'Mno@gmail.com')
insert into Hocky_Participants values(4, 'Xyz', 'Xyz@gmail.com')
insert into Hocky_Participants values(5, 'Def', 'Def@gmail.com')


create table Football_Participants 
(
	Id int not null, 
	Name varchar(50), 
	Email varchar(100)
)

select * from Football_Participants


insert into Football_Participants values(1, 'Xyz', 'Xyz@gmail.com')
insert into Football_Participants values(2, 'Abc', 'Abc@gmail.com')
insert into Football_Participants values(3, 'Mno', 'Mno@gmail.com')
insert into Football_Participants values(4, 'Pqr', 'Pqr@gmail.com')
insert into Football_Participants values(5, 'Jkl', 'Jkl@gmail.com')

select * from Football_Participants
select * from Hocky_Participants


select * from Football_Participants
union
select * from Hocky_Participants


select * from Football_Participants
union all
select * from Hocky_Participants

select * from Football_Participants
intersect
select * from Hocky_Participants

select * from Football_Participants
except
select * from Hocky_Participants

