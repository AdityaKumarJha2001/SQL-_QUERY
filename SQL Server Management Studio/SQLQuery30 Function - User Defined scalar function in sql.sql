/*                                  FUNCTION IN SQL SERVER

	# Sql server functions are useful objects in sql server databases.
	# A function is a set of sql statements that perform a specific task. Functions faster code reusability.
	# if you have to repeatedly write large sql scripts to perform the same task, you can create a function that performs that task.
	# A function accepts inputs in the form of parameters and returns a value.
	# Sql server comes with a set of built-in function (System function) that perform a variety of task.
	# In sql server, a function is a stored program that you can pass parameters into and return a value. 
	# Of cource, you could create a stored procedure to group a set of sql statements and execute them, however, stored procedure cannot be 
	  called within sql statements.    (sql statements means select, insert, update, delete)

	# A function must have a name and a function name can never start with a special character such as @, $, #, and so on.
	# Function only work with select statements. 
	# Functions compile every time.
	# Function only work with input parameters.
	# Try and catch statements are not used in functions.

	                                             function Type

	# User Defined Function: User Defined Functions are create by a user.
	# System Defined Function: System function are built in database function.

	                      There are three types of user-defined functions in sql server

	# Scalar Function
	# Inline Table Valued Functions
	# Multi-statement Table Valued Functions 

	                                          SCALAR FUNCTION
	# Sql server scalar function takes one or more parameters and returns a scalar (single) value.
	# The returned value can be of any datatype, except text, ntext, image, cursor and timestamp. 
	
*/
	

use Aditya_123

                                       -- Scalar function Example

create function ShowMessage()			--create a scalar function without parameter
returns varchar(100)
as
begin
	return 'Welcome to function'
end

select dbo. ShowMessage()


create function Take_A_Number(@num as int)					-- create a scalar function with a single parameter
returns int 
as
begin
	return (@num * @num)
end

select dbo. Take_A_Number(5)


create function Addition(@num1 as int, @num2 as int)					-- create a scalar function with multiple parameters
returns int 
as
begin
	return (@num1 + @num2)
end

select dbo. Addition(5,5)

--Alter a function


alter function Take_A_Number(@num as int)					-- create a scalar function with a single parameter
returns int 
as
begin
	return (@num * @num * @num)
end

select dbo. Take_A_Number(5)

--drop function

drop function dbo.Take_A_Number
 
   --Scalar Function using if else

create function CheckVotersAge(@age int)
returns varchar(100)
as
begin
	declare @str varchar(100)
	if @age >=18
	begin
		set @str = 'You are eligible to vote'
	end
	else
	begin
		set @str = 'You are not eligible to vote'
	end
	return @str
end

select dbo.CheckVotersAge(21)

create function GetMyDate()
returns datetime
as
begin
	return getdate()                        --scalar function can call other function
end

select dbo.GetMyDate()

