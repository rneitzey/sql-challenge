Select * from Employees

Select * from Departments

Select * from DeptEmployees

Select * from DeptManager

Select * from Salaries

Select * from Titles


-- List the following details of each employee: employee number, last name, first name, gender, and salary.
Select 	e.employeeid, 
		e.lastname, 
		e.firstname, 
		e.gender, 
		s.salary 
	from Employees e
	left join salaries s
		on e.employeeid = s.employeeid
	
-- List employees who were hired in 1986.
Select * from Employees
	where hiredate between '1986-01-01' and '1986-12-31'
	
-- List the manager of each department with the following information: department number, department name, 
-- the manager's employee number, last name, first name, and start and end employment dates.
Select 	dm.deptid,
		d.deptname,
		e.employeeid,
		e.lastname,
		e.firstname,
		dm.fromdate,
		dm.todate
	from DeptManager dm
	inner join Departments d
		on dm.deptid = d.deptid
	inner join Employees e
		on e.employeeid = dm.employeeid
order by deptid

