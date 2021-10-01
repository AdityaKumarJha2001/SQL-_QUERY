/*												COMPOSITE KEY IN SQL
	COMPOSITE KEY, OR COMPOSITE PRIMARY KEY, REFERS TO CASES WHERE MORE THAN ONE COLUMN IS USED TO SPECIFY THE PRIMARY KEY OF A TABLE.

	IN SUCH CASES, ALL FOREIGN KEY WILL ALSO NEED TO INCLUDE ALL THE COLUMN IN THE COMPOSITE KEY.
	
	NOTE THAT THE COLUMNS THAT MAKE UP A COMPOSITE KEY CAN BE OF DIFFERENT DATA TYPE.
*/

use Aditya_123

create table Composite_Key_Emp_Tbl
(
	Emp_Id int not null,
	Dept_Id int not null,
	Emp_Name varchar(50),
	Emp_Gender varchar(50),
	Emp_Salary int,
	Dept_Name varchar(50),
	Dept_Head varchar(50),
	primary key (Emp_Id, Dept_Id)
)

select * from Composite_Key_Emp_Tbl

insert into Composite_Key_Emp_Tbl values (1, 1, 'Abc', 'Male', 22000, 'I-T', 'Pqr')
insert into Composite_Key_Emp_Tbl values (2, 2, 'Def', 'Female', 24000, 'H-R', 'Pqr')
insert into Composite_Key_Emp_Tbl values (3, 1, 'Abc', 'Male', 22000, 'I-T', 'Pqr')
insert into Composite_Key_Emp_Tbl values (4, 2, 'Abc', 'Male', 21000, 'H-R', 'Pqr')
insert into Composite_Key_Emp_Tbl values (5, 1, 'Abc', 'Female', 25000, 'I-T', 'Pqr')
insert into Composite_Key_Emp_Tbl values (1, 1, 'Abc', 'Male', 22000, 'I-T', 'Pqr')

insert into Composite_Key_Emp_Tbl values (1, 2, 'Abc', 'Male', 22000, 'I-T', 'Pqr')
