CREATE TABLE Employees (
	EmployeeID int PK NOT NULL,
	BirthDate date,
  	FirstName VARCHAR(50) NOT NULL,
  	LastName VARCHAR(50) NOT NULL,
  	Gender SET(M,F,U),
  	HireDate date NOT NULL
	);

CREATE TABLE Departments (
	DeptID PK int NOT NULL,
	DeptName varchar(50)
	);

CREATE TABLE DeptEmployees (
	EmployeeID int FK >- e.EmployeeID,
	DeptID int FK >- d.DeptID,
	FromDate date,
	ToDate date
	);

CREATE TABLE DeptManager (
	DeptID int FK >- d.DeptID,
	EmployeeID int FK >- e.EmployeeID,
	FromDate date,
	ToDate date
	);

CREATE TABLE Salaries (
	EmployeeID int FK >- e.EmployeeID,
	Salary int,
	FromDate date,
	ToDate date
	);

CREATE TABLE Titles (
	EmployeeID int FK >- e.EmployeeID,
	Title varchar(50),
	FromDate date,
	ToDate date
	);