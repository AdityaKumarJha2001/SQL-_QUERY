/*                                            TYPES OF SUBQUERIES IN SQL
 

 SCALAR SUBQUERIES :- sub queries that return one row to the outer Sql statement
						operators:  =   >   <  >=   <=   !=  

 MULTIVALUED SUBQURIES :- subquries that returns mopre than one row to the outer sql statement.
						operator:  in, any, all
*/

use Aditya_123

select * from MyEmployee
select * from MyDepartment

--SCALAR SUBQUERIES

select * from MyEmployee
where Dept_Id in
(select Id from MyDepartment where Dept_Name = 'Accounts')

select * from MyEmployee
where Dept_Id =
(select Id from MyDepartment where Dept_Name = 'Accounts')

--MULTIVALUED SUBQURIES

select * from MyEmployee
where Emp_Id in
(select Emp_Id from MyEmployee where Gender = 'male')

select * from MyEmployee
where Salary < any
(select Salary from MyEmployee where Emp_Name = 'Mno' or Emp_Name = 'Pqr')  --(salary < 45000 or 35000)


select * from MyEmployee
where Salary < all
(select Salary from MyEmployee where Emp_Name = 'Mno' or Emp_Name = 'Pqr') --(salary < 45000 and 35000)


select * from MyEmployee
where Salary > all
(select Salary from MyEmployee where Emp_Name = 'Abc' or Emp_Name = 'Mno') --(salary > 25000 and 35000)

select * from MyEmployee
where Salary > any
(select Salary from MyEmployee where Emp_Name = 'Abc' or Emp_Name = 'Mno') --(salary > 25000 or 35000)


select * from MyEmployee
where Salary != all
(select Salary from MyEmployee where Emp_Name = 'Abc' or Emp_Name = 'Mno') --(salary != 25000 and 35000)
