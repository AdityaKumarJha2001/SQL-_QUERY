/*                              DIFFERENCE BETWEEN FUNCTIONS AND STORED PROCEDURES IN SQL SERVER

	                   	FUNCTIONS										              STORED PROCEDURES
						
1. Function must return a value.                                      1. Stored procedure may or not return values.
2. Functions can have only input parameters.                          2. Stored procerure can have both input or output parameters.
3. Functions can be called from stored procedures.                    3. Stored procedures cannot be called from a Function.
4. Function allows only SELECT statement in it.                       4. The stored procedure allows SELECT as well as DML(INSERT/UPDATE/DELETE)
																		 statement in it.
5. Function can be utilized in a SELECT statement                     5. Stored procedures cannot be utilized in a SELECT statement.
6. Function can be used in the sql statements anywhere in             6. Stored procedure cannot be used in the sql statements anywhere in the
   the WHERE/HAVING/SELECT section.                                      WHERE/HAVING/SELECT section.   
7. We cannot use Transaction in function.                             7. We can use Transaction in stored procedure.
8. A function can be used in join clause as a result set.             8. Stored procedures cannot be used in join clause.
*/
use Aditya_123

Example 1
			create function fn_Addition_Of_Number(@num1 as int)					
			returns int 
			as
			begin
				return (@num1 + @num1)
			end

			
			select dbo. fn_Addition_Of_Number(5)

			create procedure spGetData
			as
			begin
				select * from Student_1
			end

Example 3. 
			create procedure spGetAddition
			as
			begin
				select dbo.fn_Addition_Of_Number(5)
			end

			execute spGetAddition

Example 5.   
			select sum(Age) from student_1