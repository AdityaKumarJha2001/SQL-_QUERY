use Aditya_123

create table Groupby_Emp
(
	Emp_Id int Primary key identity(100,1),
	Emp_Name varchar(60) not null,
	Gender varchar(50) not null,
	salary int not null,
	city varchar(50),
	Dept_Id int not null
)

select * from Groupby_Emp

Insert into Groupby_Emp values ('Abc', 'Male', 25000 , 'Hyderabad', 2)
Insert into Groupby_Emp values ('Xyz', 'Male', 45000, 'Ranchi', 1)
Insert into Groupby_Emp values ('Pqr', 'Female', 35000, 'Patna', 3)
Insert into Groupby_Emp values ('Mno', 'Male', 45000, 'Hyderabad', 4)
Insert into Groupby_Emp values ('Jkl', 'Male', 35000, 'Ranchi', 2)
Insert into Groupby_Emp values ('Def', 'Male', 25000, 'Patna', 1)
Insert into Groupby_Emp values ('Mno', 'Female', 15000, 'Hyderabad', 3)
Insert into Groupby_Emp values ('Abc', 'Male', 35000, 'Ranchi', 2)
Insert into Groupby_Emp values ('Ghi', 'Female', 35000, 'Patna', 1)
Insert into Groupby_Emp values ('Stu', 'Male', 45000, 'Hyderabad', 4)
Insert into Groupby_Emp values ('Xyz', 'Female', 25000, 'Ranchi', 3)



select sum(Salary) as [Total Salary According to Cities] from Groupby_Emp
group by City

select city, sum(Salary) as [Total Salary According to Cities] from Groupby_Emp
group by City

select Gender,City, sum(Salary) as [Total Salary According to Cities] from Groupby_Emp
group by Gender,City


select City, sum(Salary) as Total_Salary from Groupby_Emp
group by City having City in ('Hyderabad');

select City, sum(Salary) as Total_Salary from Groupby_Emp
Where City in ('Hyderabad') group by City 

select City, sum(Salary) as Total_Salary from Groupby_Emp
group by City having sum(salary) > 95000;

select City, sum(Salary) as Total_Salary from Groupby_Emp
where city in ('Hyderabad','Patna')group by City having sum(salary) > 55000;

select * from Groupby_Emp
order by Emp_Name

select * from Groupby_Emp
order by Emp_Name desc

Select city, Count(*) as no_of_Emp from Groupby_Emp group by city 
Select Count(*) as no_of_Emp from Groupby_Emp group by city 