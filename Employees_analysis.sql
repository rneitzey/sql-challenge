
-- List the following details of each employee: employee number, last name, first name, gender, and salary.
Select 	e.employeeid, 
		e.lastname, 
		e.firstname, 
		e.gender, 
		s.salary 
	from Employees e
	left join salaries s
		on e.employeeid = s.employeeid;
	
-- List employees who were hired in 1986.
Select * from Employees
	where hiredate between '1986-01-01' and '1986-12-31';
	
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
	left join Departments d
		on dm.deptid = d.deptid
	left join Employees e
		on e.employeeid = dm.employeeid
order by deptid;

-- List the department of each employee with the following information: 
-- employee number, last name, first name, and department name.
Select	e.employeeid, 
		e.lastname,
		e.firstname, 
		d.deptname
	from Employees e
	inner join DeptEmployees de
		on e.employeeid = de.employeeid
	inner join Departments d
		on de.deptid = d.deptid;

-- List all employees whose first name is "Hercules" and last names begin with "B."
Select firstname, lastname
	from Employees
		where firstname = 'Hercules'
		and lastname like 'B%';
		
-- List all employees in the Sales department, including their employee number, 
-- last name, first name, and department name.
Select 	e.employeeid,
		e.lastname,
		e.firstname,
		d.deptname
	from Employees e
	inner join DeptEmployees de
		on e.employeeid = de.employeeid
	inner join Departments d
		on de.deptid = d.deptid
			where d.deptname = 'Sales';
		
-- List all employees in the Sales and Development departments, including their employee number, 
-- last name, first name, and department name.
Select 	e.employeeid,
		e.lastname,
		e.firstname,
		d.deptname
	from Employees e
	inner join DeptEmployees de
		on e.employeeid = de.employeeid
	inner join Departments d
		on de.deptid = d.deptid
			where d.deptname in ('Sales','Development');
			
-- In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
SELECT lastname as "Last Name", COUNT(lastname) as "Frequency Count"
	FROM Employees
	GROUP BY lastname
order by "Frequency Count" desc;

--BONUS: EmployeeID 499942 -- HaHa

Select * from Employees
	where employeeid = 499942;