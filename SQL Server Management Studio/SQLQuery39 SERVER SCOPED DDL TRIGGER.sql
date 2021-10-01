/*									Server scoped ddl triggers
	Server scoped ddl triggers are invoked by ddl events at the server level.
	Server scoped ddl triggers are stored in the master database.
*/

use Aditya_123

create trigger tr_ServerScopedTrigger
on all server
for create_table
as
begin
	print 'You have just created a table'
end

create table My_Table (id int)

alter trigger tr_ServerScopedTrigger
on all server
for create_table
as
begin
	rollback
	print 'You are not allowed to create a table'
end

create table My_Table1 (id int)

create trigger tr_ServerScopedTrigger_View
on all server
for create_view
as
begin
	rollback
	print 'You are not allowed to create a view'
end

create view vw_Mytable
as
select * from MyEmployee

disable trigger tr_ServerScopedTrigger on all server

create table My_Table (id int)

enable trigger tr_ServerScopedTrigger on all server

create table My_Table2 (id int)

drop trigger tr_ServerScopedTrigger on all server
drop trigger tr_ServerScopedTrigger_View on all server
