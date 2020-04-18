
--#1)List the following details of each employee: employee number, last name, first name, gender, and salary.

SELECT employees.emp_no, employees.last_name, employees.first_name, employees.gender, salaries.salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no;



--#2) List employees who were hired in 1986.
SELECT * 
FROM employees
WHERE hire_date >= '1986-01-01' AND hire_date <= '1986-12-31';

--#3)List the manager of each department with the following information: department number, department name, the manager's employee number, last name, first name, and start and end employment dates.
SELECT departments.dept_no, departments.dept_name, dept_manager.emp_no, employees.first_name, employees.last_name, dept_manager.from_date, dept_manager.to_date
FROM dept_manager
LEFT JOIN departments ON departments.dept_no = dept_manager.dept_no
LEFT JOIN employees ON employees.emp_no = dept_manager.emp_no;

--#4) List the department of each employee with the following information: employee number, last name, first name, and department name.
SELECT departments.dept_name, employees.emp_no, employees.first_name, employees.last_name
FROM dept_manager
LEFT JOIN employees ON employees.emp_no = dept_manager.emp_no
LEFT JOIN departments ON dept_manager.dept_no = departments.dept_no;

--#5) List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name
FROM employees
WHERE first_name = 'Hercules' AND last_name LIKE 'B%'

--#6) List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT departments.dept_name, employees.emp_no, employees.first_name, employees.last_name
FROM dept_emp
FULL OUTER JOIN employees ON employees.emp_no = dept_emp.emp_no
FULL OUTER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales';

--#7) List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.

SELECT departments.dept_name, employees.emp_no, employees.first_name, employees.last_name
FROM dept_emp
FULL OUTER JOIN employees ON employees.emp_no = dept_emp.emp_no
FULL OUTER JOIN departments ON dept_emp.dept_no = departments.dept_no
WHERE dept_name = 'Sales' OR dept_name = 'Development';

--#8) In descending order, list the frequency count of employee last names, i.e., how many employees share each last name.

SELECT last_name, COUNT(last_name) 
FROM employees
GROUP BY last_name
ORDER BY (last_name) DESC;





