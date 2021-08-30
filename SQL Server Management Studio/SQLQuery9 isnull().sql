use Aditya_123;

select * from Student_Bio_Data;

select * from Student_Bio_Data WHERE CLASS = 'b.tch';

select * from Student_Bio_Data WHERE roll_no IS NULL;

select * from Student_Bio_Data WHERE roll_no in (1,2)


select Student_Name = (isnull(Std_Name,0) + isnull(FATHER_NAME,0)) from Student_Bio_Data
