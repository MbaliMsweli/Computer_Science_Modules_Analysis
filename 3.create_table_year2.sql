--Using the Database already created
USE DATABASE computer_sciences
GO
--Creating a table
CREATE TABLE course_curriculum 
(
    Course_Id INT IDENTITY(1,1) PRIMARY KEY,
	Module_Code VARCHAR(500),
	Module_Description VARCHAR(500),
	Module_Credits INT,
	Module_Type VARCHAR(500)
)
GO

--Inserting data in our table
INSERT INTO course_curriculum 
	(Module_Code,Module_Description,Module_Credits,Module_Type)
VALUES
	('JCP 202','Community-based project 202',8,'Fundamental module'),
	('COS 212','Data structures and algorithm 212',16,'Core module'),
	('COS 214','Software modelling 214',16,'Core module'),
	('COS 216','Netcentric computer sysytems 216',16,'Core module'),
	('COS 221','Introduction to database systems 216',16,'Core module'),
	('COS 226','Concurrent systems 226',16,'Core module'),
	('COS 284','Computer organisation and architecture 284',16,'Core module'),
	('WTW 285','Discrete strucure 285',12,'Core module'),
	('STK 210','Statistic 210',20,'Elective module'),
	('STK 220','Statistics 220',20,'Elective module'),
	('WST 211','Mathematical Statistics 211',24,'Elective module'),
	('WST 212','Applications in data science 212',12,'Elective module'),
	('WST 221','Mathematical statistics 221',24,'Elective module')
GO

--Getting the table
SELECT*
FROM course_curriculum
GO




		
