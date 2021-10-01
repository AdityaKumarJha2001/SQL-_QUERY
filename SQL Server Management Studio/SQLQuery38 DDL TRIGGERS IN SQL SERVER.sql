/*                                     DATABASE SCOPED DDL TRIGGERS IN SQL SERVER
	
	DATA DEFINATION LANGUAGE(DDL) TRIGGERS EXECUTE STORED PROCEDURES WHEN DDL EVENTS SUCH AS CREATE, ALTER, AND DROP STATEMENTS OCCUR 
	IN THE DATABASE OR THE SERVER

	WE CAN USE ROLLBACK COMMAND TO PREVENT FOR CREATING, ALTERING AND DROPPING SOMETHING IN THE DATABASE OR SERVER

	WE CAN ENABLE OR DISABLE TRIGGERS FOR A TIME BEGIN AS PER REQUIREMENT.

	RENAME EVENT IS USED IN THE DDL TRIGGER WHEN WE INVOKE THE SYSTEM STORE PROCEDURE SP_RENAME.

*/

use Aditya_123

create trigger Tr_Ddl_Table_Create
on database
for create_Table
as
begin
	print 'New table created'
end

create table test_tbl(id int)

create trigger Tr_Ddl_Table_Alter
on database
for alter_table
as
begin
	print 'You have just altered a table'
end

alter table test_tbl add T_Name varchar(50)

select * from test_tbl

create trigger Tr_Ddl_Table_Drop
on database
for drop_table
as
begin
	print 'You have just dropped the a table'
end

drop table test_tbl


create trigger Tr_Ddl_Sp
on database
for create_procedure
as
begin
	print 'New Store procedure created'
end

create procedure sp_My_Procedure
as
begin
	print 'This is my store procedure'
end

create trigger Tr_Ddl_Sp1
on database
for create_procedure
as
begin
	rollback
	print 'You are not allowed to create a stored procedure '
end

create procedure sp_My_Procedure1
as
begin
	print 'This is my store procedure'
end


disable trigger Tr_Ddl_Sp1 on database

enable trigger Tr_Ddl_Sp1 on database



drop trigger Tr_Ddl_Table_Create on database
drop trigger Tr_Ddl_Table_Alter on database
drop trigger Tr_Ddl_Table_Drop on database

drop trigger Tr_Ddl_Sp on database
drop trigger Tr_Ddl_Sp1 on database