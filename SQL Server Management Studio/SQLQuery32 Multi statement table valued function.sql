/*                                 MULTI-STATEMENT TABLE VALUED FUNCTIONS 

	# A multi-statement table-valued function is a table-valued function that returns the result of multiple statements.
	# The multi-statement-table-valued function is very useful because you can execute multiple queries within the function and aggregate results into the returned table.

	                                 DIFFERENCE BETWEEN INLINE TABLE-VALUED FUNCTIONS AND MULTI-STATEMENT TABLE-VALUED FUNCTIONS

           INLINE TABLE-VALUED FUNCTIONS                                  MULTI-STATEMENT TABLE-VALUED FUNCTIONS

	# In this, the returns clause cannot contain the                   # In this, we specify the structure of the table with returns clause.
	 structure of the table.
    # In,this there are no BEGIN and END blocks.                       # In this, we have to use BEGIN and END blocks.
	# Internally, Inline table-valued function much like               # Internally, Multi-statement table-valued function much like it would a stored procedure.
	  it would a view.
*/


use Aditya_123

select * from Student_1
select * from Teacher_1

create function fn_GetStudentsByGender(@Gender varchar(20))
returns @mytable table (Std_Id int, Std_Name varchar(50), Std_Gender varchar(50))
as
begin
	insert into @mytable 
	select Std_Id,Std_Name,Gender from Student_1 where Gender = @Gender

	return
end

select * from fn_GetStudentsByGender('Male')
