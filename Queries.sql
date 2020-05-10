-- employee number, last name, first name, gender, and salary.
SELECT employees.emp_no, last_name, first_name, gender, salary
FROM employees
LEFT JOIN salaries ON employees.emp_no = salaries.emp_no
;

--List employees who were hired in 1986.
SELECT emp_no, last_name, first_name, hire_date
FROM employees
WHERE hire_date >= '1986/01/01' AND hire_date < '1987/01/01'
;


--List the manager of each department with the following information: 
--department number, department name, the manager's employee number, last name, first name, and start(from_date) and end employment dates(to_date).
SELECT dept_manager.dept_no, dept_name, dept_manager.emp_no, last_name, first_name, from_date, to_date
FROM dept_manager
JOIN departments ON dept_manager.dept_no = departments.dept_no 
JOIN employees ON dept_manager.emp_no = employees.emp_no
;

--List all employees whose first name is "Hercules" and last names begin with "B."

SELECT first_name, last_name
FROM employees
Where first_name = 'Hercules' AND last_name like 'B%'
;

--List all employees in the Sales department, including their employee number, last name, first name, and department name.
SELECT dept_name, employees.emp_no, first_name, last_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
WHERE dept_name= 'Sales'
;

--List all employees in the Sales and Development departments, including their employee number, last name, first name, and department name.
SELECT dept_name, employees.emp_no, first_name, last_name
FROM employees
JOIN dept_emp ON dept_emp.emp_no = employees.emp_no
JOIN departments ON departments.dept_no = dept_emp.dept_no
--WHERE dept_name = 'Sales' or dept_name = 'Development'
WHERE dept_name IN ('Sales', 'Development')
;

 --descending order, list the frequency count of employee last names, i.e., how many employees share each last name.
 SELECT last_name, COUNT(last_name)
 FROM employees
 GROUP BY last_name
 ORDER BY COUNT(last_name) DESC
 ;