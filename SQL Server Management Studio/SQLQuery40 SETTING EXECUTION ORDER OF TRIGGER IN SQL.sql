
use Aditya_123

create table Student_Tbl
(
	S_Id int primary key,
	S_Name varchar(50),
	Age int,
	Class int
)

select * from Student_Tbl

insert into Student_Tbl values(1, 'Sdf', 17, 8)
insert into Student_Tbl values(2, 'MNB', 16, 7)
insert into Student_Tbl values(3, 'VBG', 15, 8)
insert into Student_Tbl values(4, 'VGC', 16, 7)
insert into Student_Tbl values(5, 'GGG', 17, 8)
insert into Student_Tbl values(6, 'Gfh', 15, 6)

insert into Student_Tbl values(7, 'Gfh', 10, 4)
insert into Student_Tbl values(6, 'Gfh', 15, 6)

create trigger tr_Student_3
on Student_Tbl
after insert
as
begin
	print '3rd trigger is fired'
end

create trigger tr_Student_2
on Student_Tbl
after insert
as
begin
	print '2nd trigger is fired'
end

create trigger tr_Student_1
on Student_Tbl
after insert
as
begin
	print '1st trigger is fired'
end


insert into Student_Tbl values(7, 'Gfh', 10, 4)

execute sp_settriggerorder
@triggername = 'tr_Student_1',
@order = 'first',
@stmttype = 'insert'

insert into Student_Tbl values(8, 'Gfh', 10, 4)

execute sp_settriggerorder
@triggername = 'tr_Student_3',
@order = 'last',
@stmttype = 'insert'

insert into Student_Tbl values(9, 'Gfh', 10, 4)
