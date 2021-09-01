--    -- On the other hand, Select Into statement can copy the data row from one table to another new table.

--					                             INSERT INTO SELECT STATEMENT
-- In Sql we can copy the data rows from one table to another existing table.
--Copy from Source table and paste to Target table both action are exicuted in a single sql statement.
--The source table and target table must have similar table defination,(same columns with same datatype).
--Any existing rows or records in target table remain un-affected.

--Example:-
--		insert into Target_Table select * from Source_Table
--		insert into Target_Table(Column1,Column2) select column1,column2 from Source_Table

--		we can copy all columns or specific columns from  Source Table to Target Table.
use Aditya_123


create table Student_Tbl_Rnc
(
	S_Id int, 
	S_Name varchar(50), 
	Father_Name varchar(50), 
	Age int, 
	class int
)

select * from Student_Tbl_Rnc

drop table Student_Tbl_Rnc

insert into Student_Tbl_Rnc values(1, 'Abc', 'Xyz', 10, 5)
insert into Student_Tbl_Rnc values(2, 'Pqr', 'Def', 12, 7)
insert into Student_Tbl_Rnc values(3, 'Mno', 'Uvw', 14, 9)
insert into Student_Tbl_Rnc values(4, 'Jkl', 'Lmn', 11, 6)
insert into Student_Tbl_Rnc values(5, 'Ghi', 'Mno', 8, 3)

create table Student_Tbl_Hyd
(
	S_Id int, 
	S_Name varchar(50), 
	Father_Name varchar(50), 
	Age int, 
	class int
)

select * from Student_Tbl_Hyd

insert into Student_Tbl_Hyd values(1, 'Stu', 'Def', 14, 9)
insert into Student_Tbl_Hyd values(2, 'Qrs', 'Xyz', 15, 10)


insert into Student_Tbl_Hyd select * from Student_Tbl_Rnc



create table Student_Tbl_Rnc_1
( 
	S_Name varchar(50), 
	Father_Name varchar(50), 
	Age int, 
	class int
)

select * from Student_Tbl_Rnc_1

drop table Student_Tbl_Rnc

insert into Student_Tbl_Rnc_1 values('Abc', 'Xyz', 10, 5)
insert into Student_Tbl_Rnc_1 values('Pqr', 'Def', 12, 7)
insert into Student_Tbl_Rnc_1 values('Mno', 'Uvw', 14, 9)
insert into Student_Tbl_Rnc_1 values('Jkl', 'Lmn', 11, 6)
insert into Student_Tbl_Rnc_1 values('Ghi', 'Mno', 8, 3)

create table Student_Tbl_Hyd_1
(
	S_Id int identity, 
	S_Name varchar(50), 
	Father_Name varchar(50), 
	Age int, 
	class int
)

select * from Student_Tbl_Hyd_1

insert into Student_Tbl_Hyd_1 values('Stu', 'Def', 14, 9)
insert into Student_Tbl_Hyd_1 values('Qrs', 'Xyz', 15, 10)

select * from Student_Tbl_Rnc_1
select * from Student_Tbl_Hyd_1

truncate table Student_Tbl_Hyd_1

insert into Student_Tbl_Hyd_1 select * from Student_Tbl_Rnc_1

insert into Student_Tbl_Hyd_1 (S_Name,Father_Name) select S_Name,Father_Name from Student_Tbl_Rnc_1

insert into Student_Tbl_Hyd_1 select * from Student_Tbl_Rnc_1 where class = 9

