CREATE TABLE Employees (
	EmployeeID INT not NULL PRIMARY KEY,
	BirthDate DATE,
  	FirstName VARCHAR(50) not NULL,
  	LastName VARCHAR(50) not NULL,
  	Gender VARCHAR(1),
  	HireDate DATE not NULL
	);

CREATE TABLE Departments (
	DeptID VARCHAR(10) not NULL PRIMARY KEY,
	DeptName VARCHAR(50)
	);

CREATE TABLE DeptEmployees (
	EmployeeID INT not NULL,
	DeptID VARCHAR(10) not NULL,
	FromDate DATE,
	ToDate DATE,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
	FOREIGN KEY (DeptID) REFERENCES Departments(DeptID)
	);

CREATE TABLE DeptManager (
	DeptID VARCHAR(10) not NULL,
	FOREIGN KEY (DeptID) REFERENCES Departments(DeptID),
	EmployeeID INT not NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
	FromDate DATE,
	ToDate DATE
	);

CREATE TABLE Salaries (
	EmployeeID INT not NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
	Salary INT,
	FromDate DATE,
	ToDate DATE
	);

CREATE TABLE Titles (
	EmployeeID INT not NULL,
	FOREIGN KEY (EmployeeID) REFERENCES Employees(EmployeeID),
	Title VARCHAR(50),
	FromDate DATE,
	ToDate DATE
	);
	
Select * from Employees

Select * from Departments

Select * from DeptEmployees

Select * from DeptManager

Select * from Salaries

Select * from Titles