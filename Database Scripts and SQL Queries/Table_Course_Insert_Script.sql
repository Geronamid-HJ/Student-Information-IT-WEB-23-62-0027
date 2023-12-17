USE [StudentInformation]
GO
SET IDENTITY_INSERT [dbo].[Course] ON 
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [LecturerName]) VALUES (1, N'Web Development', N'M.M. Herath')
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [LecturerName]) VALUES (2, N'Graphic Design', N'J.S.V. Piyasena')
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [LecturerName]) VALUES (3, N'Mobile App Development', N'K.K.S. Dias')
GO
INSERT [dbo].[Course] ([CourseId], [CourseName], [LecturerName]) VALUES (4, N'Java', N'U.H.S. Perera')
GO
SET IDENTITY_INSERT [dbo].[Course] OFF
GO
