CREATE TABLE [dbo].[Student](
	[Id] [int] NOT NULL,
	[FirstName] [varchar](50) NULL,
	[LastName] [varchar](50) NULL,
	[Class] [varchar](10) NULL,
	[Gender] [varchar](6) NULL
) ON [PRIMARY]
GO

INSERT [dbo].[Student] ([Id], [FirstName], [LastName], [Class], [Gender]) VALUES 
( 'Joh', 'Doe', 'Four', 'female'),
( 'Max', 'Plank', 'Three', 'male'),
( 'Arnold', 'Bill', 'Three', 'male'),
( 'Krish', 'Star', 'Four', 'female'),
( 'Joh', 'Mike', 'Four', 'female'),
( 'Alex', 'Joh', 'Four', 'male'),
( 'My', 'John Rob', 'Five', 'male'),
( 'Asruid', 'Jho', 'Five', 'male'),
( 'Tes', 'Qry', 'Six', 'male'),
( 'Big', 'Joh', 'Four', 'female'),
( 'Ronald', NULL, 'Six', 'female'),
( 'Recky', NULL, 'Six', 'female'),
( 'Kty', NULL, 'Seve', 'female'),
( 'Bigy', NULL, 'Seve', 'female'),
( 'Tade', 'Row', 'Four', 'male'),
( 'Gimmy', NULL, 'Four', 'male'),
( 'Tumyu', NULL, 'Six', 'male'),
( 'Honny', NULL, 'Five', 'male'),
( 'Tinny', NULL, 'Nine', 'male'),
( 'Jackly', NULL, 'Nine', 'female'),
( 'Babby', 'Joh', 'Four', 'female'),
( 'Reggid', NULL, 'Seve', 'female') ,
( 'Herod', NULL, 'Eight', 'male'),
( 'Tiddy', 'Now', 'Seve', 'male'),
( 'Giff', 'Tow', 'Seve', 'male'),
( 'Crelea', NULL, 'Seve', 'male'),
( 'Big', 'Nose', 'Three', 'female') ,
( 'Rojj', 'Base', 'Seve', 'female'),
( 'Tess', 'Played', 'Seve', 'male'),
( 'Reppy', 'Red', 'Six', 'female'),
( 'Marry', 'Toeey', 'Four', 'male'),
( 'Bin', 'Rott', 'Seve', 'female'),
( 'Ken', 'Rei', 'Six', 'female'),
( 'Gai', 'Toe', 'Seve', 'male'),
( 'Rows', 'Noump', 'Six', 'female')

-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

CREATE TABLE Subjects (
  Id int IDENTITY(1,1) NOT NULL,
  SubjectName varchar(50)
)  ON [PRIMARY]

INSERT INTO Subjects (SubjectName) VALUES
('Bangla'),
('Math'),
('English'),
('Science'),
('Social Science'),
('Religion'),
('Statistics'),
('Physics'),
('Chemistry'),
('Biology');


-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

CREATE TABLE Exams (
  Id int IDENTITY(1,1) NOT NULL,
  Exam_Date Date,
  Student_Id int,
  Subject_Id int,
  Grade float
)  ON [PRIMARY]

INSERT INTO Exams (Exam_Date, Student_Id, Subject_Id, Grade) VALUES
('12-13-2021', 1, 1 , 8),
('12-14-2021', 1, 2 , 7),
('12-15-2021', 1, 3 , 7),
('12-16-2021', 1, 4 , 6),
('12-17-2021', 1, 5 , 8),
('12-18-2021', 1, 6 , 8),
('12-19-2021', 1, 7 , 6),
('12-20-2021', 1, 8 , 5),
('12-21-2021', 1, 9 , 7),
('12-22-2021', 1, 10, 5),
('12-13-2021', 2, 1 , 9),
('12-14-2021', 2, 2 , 6),
('12-15-2021', 2, 3 , 8),
('12-16-2021', 2, 4 , 7),
('12-17-2021', 2, 5 , 5),
('12-18-2021', 2, 6 , 3),
('12-19-2021', 2, 7 , 4),
('12-20-2021', 2, 8 , 5),
('12-21-2021', 2, 9 , 3),
('12-22-2021', 2, 10, 6),
('12-13-2021', 3, 1 , 5),
('12-14-2021', 3, 2 , 6),
('12-15-2021', 3, 3 , 7),
('12-16-2021', 3, 4 , 8),
('12-17-2021', 3, 5 , 9),
('12-18-2021', 3, 6 , 8),
('12-19-2021', 3, 7 , 8),
('12-20-2021', 3, 8 , 8),
('12-21-2021', 3, 9 , 5),
('12-22-2021', 3, 10, 4),
('12-13-2021', 4, 1 , 5),
('12-14-2021', 4, 2 , 7),
('12-15-2021', 4, 3 , 8),
('12-16-2021', 4, 4 , 3),
('12-17-2021', 4, 5 , 5),
('12-18-2021', 4, 6 , 5),
('12-19-2021', 4, 7 , 5),
('12-20-2021', 4, 8 , 5),
('12-21-2021', 4, 9 , 6),
('12-22-2021', 4, 10, 6),
('12-13-2021', 5, 1 , 6),
('12-14-2021', 5, 2 , 6),
('12-15-2021', 5, 3 , 6),
('12-16-2021', 5, 4 , 8),
('12-17-2021', 5, 5 , 8),
('12-18-2021', 5, 6 , 8),
('12-19-2021', 5, 7 , 8),
('12-20-2021', 5, 8 , 8),
('12-21-2021', 5, 9 , 8),
('12-22-2021', 5, 10, 7);
