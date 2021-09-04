--                     STORED PROCEDURE WITH INPUT PARAMETER
--                     STORED PROCEDURE WITH OUTPUT PARAMETER

use Aditya_123

select * from MyEmployee

create procedure SpGetEmployeeByGender
@Gender varchar(50),                                       --Input Parameter
@EmployeeCount int output                                 --Output Parameter
as
begin
select @EmployeeCount = count(Emp_Id) from MyEmployee where Gender = @Gender
end

Declare @TotalEmployee int                                 --Declare is a keyword  
execute SpGetEmployeeByGender 'Male', @TotalEmployee output
select @TotalEmployee

Declare @TotalEmployee int                                
execute SpGetEmployeeByGender 'Female', @TotalEmployee output
select @TotalEmployee


Declare @TotalEmployee int                                
execute SpGetEmployeeByGender 'Male', @TotalEmployee output
select @TotalEmployee as Male_Employees

