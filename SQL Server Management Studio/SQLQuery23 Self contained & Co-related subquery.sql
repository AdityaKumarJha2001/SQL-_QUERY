/*  SELF CONTAINED SUBQUERIES 
		# These queries are written as standalone queries, without any dependencies on the outer query.
		# A self-contained subquery is processed once when the outer query runs and passes its results to the outer query

 CO-RELATED SUB QUERIES
		# There queries reference one or more columns from the outer query and therefore, depend on the outer query.
		# Corelated subqueries cannot be run separately from the outer query.

 NOTE:- We can use scalar aggregate functions in subqueries because where clause don't allow us to use aggregate functions with where clause.
		  Self-contained or Co-related subqueries both can be scalar and multivalued subqueries.
*/

use Aditya_123

select * from MyEmployee
select * from MyDepartment

-- SELF CONTAINED SUBQUERIES 

select * from MyEmployee
where Dept_Id in
(select Id from MyDepartment where Dept_Name = 'HR' )

-- CO-RELATED SUB QUERIES
select * from MyEmployee as e
where e.Dept_Id in
(select d.Id from MyDepartment as d where e.Gender = 'Male')

select * from MyEmployee as e
where e.Dept_Id in
(select d.Id from MyDepartment as d where e.Salary > 25000)


--Scalar Aggregate Function(Aggregate Function) in sub quries

select * from MyEmployee
where Salary in 
(select min(Salary) from MyEmployee)

select * from MyEmployee
where Salary in 
(select max(Salary) from MyEmployee)
