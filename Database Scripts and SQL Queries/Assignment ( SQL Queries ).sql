----------------ASSIGNMENT------------------
--A. Get all the information of all Students.
SELECT StudentId, StudentName AS 'Student Name', City AS 'City', A.[CourseId] 
FROM [dbo].[Student] A 


-- Results --
--StudentId		Student Name			City		CourseId
--	1			Kasun Gamage			Kandy			2
--	2			Daniel Sam				Jaffna			3
--	3			Hansi Silva				Colombo			1
--	4			Ranidu Heath			Galle			3
--	5			Praneeth Wijesinghe		Kandy			4
--	6			Nuwani Herath			Rathnapura		1


-- B. Select student id, name and city from students who are from the 'kandy'.
SELECT StudentId, StudentName AS 'Student Name', City AS 'City'
FROM [dbo].[Student] A 
WHERE A.[City] = 'Kandy'


-- Results --
--StudentId		Student Name			City
--	1			Kasun Gamage			Kandy
--	5			Praneeth Wijesinghe		Kandy


--C. Update the City as 'Galle' of the student whose Id equals to 4.
UPDATE [dbo].[Student]
	SET [City] = 'Galle'
WHERE [StudentId] = 4



--D. Get all the information of all students with their course names.
SELECT StudentId, StudentName AS 'Student Name', City AS 'City', A.[CourseId], B.[CourseName] AS 'Course' 
FROM [dbo].[Student] A 
INNER JOIN [dbo].[Course] B
	ON A.[CourseId] = B.[CourseId]


-- Results --
--StudentId		Student Name			City		CourseId	Course
--	1			Kasun Gamage			Kandy			2		Graphic Design
--	2			Daniel Sam				Jaffna			3		Mobile App Development
--	3			Hansi Silva				Colombo			1		Web Development
--	4			Ranidu Heath			Galle			3		Mobile App Development
--	5			Praneeth Wijesinghe		Kandy			4		Java
--	6			Nuwani Herath			Rathnapura		1		Web Development