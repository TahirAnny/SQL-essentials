CREATE TABLE Employee 
    (EmpID INT NOT NULL , 
        EmpName VARCHAR(50) NOT NULL, 
	    Designation VARCHAR(50) NULL, 
        Department VARCHAR(50) NULL, 
        JoiningDate DATETIME NULL,
	    CONSTRAINT [PK_Employee] PRIMARY KEY CLUSTERED (EmpID)
    )
    
-- ADD ROWS TO THE TABLE.
-- SQL SERVER 2008 AND ABOVE.	

INSERT INTO Employee 
	(EmpID, EmpName, Designation, Department, JoiningDate)
VALUES 
	(1, 'CHIN YEN', 'LAB ASSISTANT', 'LAB', GETDATE()),
	(2, 'MIKE PEARL', 'SENIOR ACCOUNTANT', 'ACCOUNTS', GETDATE()),
	(3, 'GREEN FIELD', 'ACCOUNTANT', 'ACCOUNTS', GETDATE()),
	(4, 'DEWANE PAUL', 'PROGRAMMER', 'IT', GETDATE()),
	(5, 'MATTS', 'SR. PROGRAMMER', 'IT', GETDATE()),
	(6, 'PLANK OTO', 'ACCOUNTANT', 'ACCOUNTS', GETDATE())


-- SQL SERVER 2005 AND BEFORE.

INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
    SELECT 1, 'CHIN YEN', 'LAB ASSISTANT', 'LAB', GETDATE()
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
    SELECT 2, 'MIKE PEARL', 'SENIOR ACCOUNTANT', 'ACCOUNTS', GETDATE()
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
    SELECT 3, 'GREEN FIELD', 'ACCOUNTANT', 'ACCOUNTS', GETDATE()
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
    SELECT 4, 'DEWANE PAUL', 'PROGRAMMER', 'IT', GETDATE()
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
    SELECT 5, 'MATTS', 'SR. PROGRAMMER', 'IT', GETDATE()	
INSERT INTO Employee (EmpID, EmpName, Designation, Department, JoiningDate)
    SELECT 6, 'PLANK OTO', 'ACCOUNTANT', 'ACCOUNTS', GETDATE()



-------------------------------------------------------------------------------
-------------------------------------------------------------------------------
-------------------------------------------------------------------------------

CREATE TABLE [dbo].[EmployeeDetails](
	[EmpID] [int] NULL,
	[EmpName] [varchar](50) NULL,
	[Mobile] [varchar](10) NULL,
	[PresentAddress] [varchar](100) NULL,
	[Area] [varchar](50) NULL,
	[City] [varchar](50) NULL,
	[Country] [varchar](50) NULL,
	[Qualification] [varchar](50) NULL,
	[Email] [varchar](50) NULL
) ON [PRIMARY]

GO

ALTER TABLE [dbo].[EmployeeDetails]  WITH CHECK ADD  CONSTRAINT [FK_EmployeeDetails_Employee] 
    FOREIGN KEY([EmpID])
REFERENCES [dbo].[Employee] ([EmpID])
GO

ALTER TABLE [dbo].[EmployeeDetails] CHECK CONSTRAINT [FK_EmployeeDetails_Employee]
GO
    
-- ADD ROWS TO THE TABLE.

-- SQL SERVER 2008 AND ABOVE.
	    
INSERT INTO EmployeeDetails 
    (EmpID, EmpName, Mobile, PresentAddress, Area, City, Country, Qualification, Email)
VALUES
    (1, 'CHIN YEN', '1234567879', '1 MAIN AVE', 'WA', 'TACOCA', 'USA', 'GRADUATE','chinxyz@emp.com'),
    (2, 'MIKE PEARL', '2152313213', 'B BLOCK NICE STREET', 'WENEN', 'TACOCA', 'SCODD', 'GRADUATE', 'mike230@emample.com'),
    (3, 'GREEN FIELD', '4517825469', 'UNIVERSAL NEW AVE', 'BOURNNILE', 'BRISDON', 'NEW START', 'MANAGEMENT','greenden3939@emample.com'),
    (4, 'DEWANE PAUL', '5741115523', 'SPACE, 1 OF 1', 'ANDALUSIAN', 'PARALLEL', 'NEW RIVER', 'MATHEMATICS','dpaul_lime44@emample.com'),
    (5, 'MATTS', '4755#55522', 'NOT KNOWN', 'WOODOO', 'COMMONS', 'UNITED KINGDOM', 'ADVANCE PHYSICS','matts-ino33@emample.com'),
    (6, 'PLANK OTO', '5124785452', 'TUCSON, AZ MSA', 'ALPINE', 'ARIZONA', 'USA', 'DIPLOMA IN FINANCE','plaoto_nk984@emample.com')

-- SQL SERVER 2005 AND BEFORE.

INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country, Qualification, Email)
    SELECT 1, 'CHIN YEN', '1234567879', '1 MAIN AVE', 'WA', 'TACOCA', 'USA', 'GRADUATE','chinxyz@emp.com'
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country, Qualification, Email)
    SELECT 2, 'MIKE PEARL', '2152313213', 'B BLOCK NICE STREET', 'WENEN', 'TACOCA', 'SCODD', 'GRADUATE', 'mike230@emample.com'
	    
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country, Qualification, Email)
    SELECT 3, 'GREEN FIELD', '4517825469', 'UNIVERSAL NEW AVE', 'BOURNNILE', 'BRISDON', 'NEW START', 'MANAGEMENT','greenden3939@emample.com'
	    
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country, Qualification, Email)
    SELECT 4, 'DEWANE PAUL', '5741115523', 'SPACE, 1 OF 1', 'ANDALUSIAN', 'PARALLEL', 'NEW RIVER', 'MATHEMATICS','dpaul_lime44@emample.com'
	    
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country, Qualification, Email)
    SELECT 5, 'MATTS', '4755#55522', 'NOT KNOWN', 'WOODOO', 'COMMONS', 'UNITED KINGDOM', 'ADVANCE PHYSICS','matts-ino33@emample.com'
	    
INSERT INTO EmployeeDetails (EmpID, EmpName, Mobile, PresentAddress, Area, City,Country, Qualification, Email)
    SELECT 6, 'PLANK OTO', '5124785452', 'TUCSON, AZ MSA', 'ALPINE', 'ARIZONA', 'USA', 'DIPLOMA IN FINANCE','plaoto_nk984@emample.com'



-- Referrence : https://www.encodedna.com/2012/12/create-dummy-database-tables.htm

