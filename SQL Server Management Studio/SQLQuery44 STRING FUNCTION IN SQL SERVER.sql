 /*                                                STRING FUNCTION

	ASCII()  :- RETURN THE ASCII CODE OF THE GIVEN CHARACTER.

	CHAR()  :-  CONVERTS AN INT ASCII CODE TO A CHARACTER. THE INTEGER SHOULD BE BETWEEN 0 AND 255.

	LTRIM()  :-  REMOVES BLANKS ON THE LEFT HAND SIDE OF THE GIVEN CHARACTER EXPRESSION.

	RTRIM()  :-  REMOVES BLANKS ON THE RIGHT HAND SIDE OF THE GIVEN CHARACTER EXPRESSION.

	LOWER()  :-  CONVERTS ALL THE CHARACTERS TO LOWERCASE LETTERS.

	UPPER()  :-  CONVERTS ALL THE CHARACTERS TO UPPERCASE LETTERS.

	REVERSE()  :-  REVERSE ALL THE CHARACTERS IN THE GIVEN STRING.

	LEN()  :-  RETURNS THE COUNT (INT) OF TOTAL CHARACTERS IN A STRING, EXCLUDING THE BLANKS AT THE END OF THE EXPRESSION.
*/

use Aditya_123

select ascii('A')
select ascii('Z')
select ascii('a')
select ascii('z')
select ascii(';')
select ascii('0')

select char(65)
select char(97)
select char(90)
select char(122)

declare @start int
set @start = 65 
while(@start <= 90)
begin
	print char(@start)
	set @start = @start+1
end

declare @start int
set @start = 97 
while(@start <= 122)
begin
	print char(@start)
	set @start = @start+1
end

declare @start int
set @start = 48 
while(@start <= 57)
begin
	print char(@start)
	set @start = @start+1
end

select ltrim('     hello')

create table Bio_Data
(
	B_Id int primary key,
	First_Name varchar(50) not null,
	Middle_Name varchar(50) not null,
	Last_Name varchar(50) not null,
)

select * from Bio_Data

insert into Bio_Data values (1,'  Abc', 'pqr', 'Jkl')
insert into Bio_Data values (2,'Ghi  ', 'pqr', 'Mno')
insert into Bio_Data values (3,'  Tuv', 'pqr', 'Jkl')
insert into Bio_Data values (4,'  Xyz   ', 'pqr', 'Mno')

select First_Name from Bio_Data

select ltrim(First_Name) from Bio_Data

select ltrim(First_Name) as [First_Name] from Bio_Data

select First_Name,Middle_Name,Last_Name,First_Name+' '+Middle_Name+' '+Last_Name as Full_Name from Bio_Data

select First_Name,Middle_Name,Last_Name,ltrim(First_Name)+' '+Middle_Name+' '+Last_Name as Full_Name from Bio_Data

select ltrim(First_Name),Middle_Name,Last_Name,rtrim(ltrim(First_Name))+' '+Middle_Name+' '+Last_Name as Full_Name from Bio_Data


select upper(Middle_Name) from Bio_Data

select lower(Middle_Name) from Bio_Data

select reverse(Last_Name) from Bio_Data

select First_Name,len(First_Name) from Bio_Data

select ltrim(First_Name),len(ltrim(First_Name)) from Bio_Data




