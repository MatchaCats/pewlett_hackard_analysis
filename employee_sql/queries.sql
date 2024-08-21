--List the employee number, last name, first name, sex, and 
-- salary of each employee.
SELECT emp.emp_no,
	   emp.last_name,
	   emp.first_name,
	   emp.sex,
	   sal.salary
FROM employees as emp
	LEFT JOIN salaries as sal
	ON emp.emp_no = sal.emp_no
ORDER BY emp.emp_no;


--List the first name, last name, and hire date for the employees 
-- who were hired in 1986.
SELECT emp.first_name,
       emp.last_name,
	   emp.hire_date
FROM employees as emp
WHERE hire_date BETWEEN '1986-01-01' AND '1986-12-31';

--List the manager of each department along with their department 
-- number, department name, employee number, last name, and first name.
SELECT deptm.dept_no,
	   dept.dept_name,
	   emp.emp_no,
	   emp.first_name,
	   emp.last_name
FROM dept_manager AS deptm
INNER JOIN departments as dept
ON (deptm.dept_no = dept.dept_no)
INNER JOIN employees as emp
ON (deptm.emp_no = emp.emp_no);

--List the department number for each employee along with that 
-- employee’s employee number, last name, first name, and department name.


--List first name, last name, and sex of each employee whose 
-- first name is Hercules and whose last name begins with the letter B.


--List each employee in the Sales department, including their 
-- employee number, last name, and first name.


--List each employee in the Sales and Development departments,
-- including their employee number, last name, first name, and
-- department name.


--List the frequency counts, in descending order, of all the
-- employee last names (that is, how many employees share each last name).

