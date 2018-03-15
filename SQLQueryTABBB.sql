--DROP DATABASE Outreach

CREATE DATABASE Outreach
GO

USE outreach
GO

Create TABLE tblStudent
(
StudentID INT NOT NULL IDENTITY(1,1),
StudentFirstName NVARCHAR(100) NOT NULL,
StudentMiddleName NVARCHAR(100) NOT NULL,
StudentLastName NVARCHAR(100) NOT NULL,
Gender NVARCHAR (10) NOT NULL,
Street NVARCHAR(50) NOT NULL,
City NVARCHAR (25) NOT NULL,
St CHAR (2) NOT NULL,
ZIP CHAR (5)  NOT NULL,
HomePhone NVARCHAR(25) NOT NULL,
CellPhone NVARCHAR(25) NULL,
Email NVARCHAR(50) NOT NULL,
DateOfBirth DATE NOT NULL,
ACT_Score INT NULL,
SAT_Score INT NULL,
GraduationYear NVARCHAR(4) NOT NULL,
TransferStudent BIT NOT NULL,
GPA Decimal (3,2) NOT NULL, 
EnrollmentDate DATE NULL,
Major NVARCHAR(50) NULL,
Interests NVARCHAR (50) NULL,
Phase NVARCHAR (50) NOT NULL,
ParentID INT NULL,
HighSchoolID INT NULL,
CollegeID INT NULL,
Constraint pk_StudentID PRIMARY KEY (StudentID))

GO

CREATE TABLE tblParent
(
ParentID INT NOT NULL IDENTITY(1,1),
ParentFirstName NVARCHAR(50) NOT NULL,
ParentLastName NVARCHAR(50) NOT NULL,
Alumni BIT NOT NULL, 
Constraint pk_ParentID PRIMARY KEY(ParentID))

GO

Create TABLE tblHighSchool
(
HighSchoolID INT NOT NULL IDENTITY (1,1),
HighSchoolName NVARCHAR(50) NOT NULL,
CONSTRAINT pk_HighSchoolID PRIMARY KEY(HighSchoolID))

GO

Create TABLE tblCollege 
(
CollegeID INT NOT NULL IDENTITY (1,1),
CollegeName NVARCHAR(50) NOT NULL,
CONSTRAINT pk_CollegeID PRIMARY KEY (CollegeID))

GO

PRINT 'Tables Successfully Constructed...'


ALTER TABLE tblStudent
ADD CONSTRAINT fk_ParentID FOREIGN KEY (ParentID)
REFERENCES tblParent(ParentID)
GO

ALTER TABLE tblStudent
ADD CONSTRAINT fk_HighSchoolD FOREIGN KEY (HighSchoolID)
REFERENCES tblHighSchool(HighSchoolID)
GO

ALTER TABLE tblStudent
ADD CONSTRAINT fk_CollegeID FOREIGN KEY (CollegeID)
REFERENCES tblCollege(CollegeID)
GO



PRINT 'Foreign Key Constraints successfully applied...'

