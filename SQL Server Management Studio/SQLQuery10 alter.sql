use Aditya_123

alter database Aditya_123 modify name = New_Aditya_123;

execute sp_renamedb 'New_Aditya_123', 'Aditya_123';

Select * from Voter_list;

insert into Voter_list values(6, 'Ghi', 19, 'Pqr');
insert into Voter_list (Voter_Id, Voter_Name, Voter_Age) values(8, 'Utr', 32);

alter table Voter_list add Voter_city varchar(50);

update Voter_list set Voter_city = 'Giridih' where Voter_Id = 5;

alter table Voter_list drop column Voter_city ;

alter table Voter_list alter column Voter_Name nvarchar(50);

alter table Voter_list alter column Voter_Name varchar(50);