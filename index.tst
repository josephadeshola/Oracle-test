(1) SELECT * from employees WHERE ROWNUM <= 15

(2) SELECT employees.last_name,employees.salary/2,departments.department_name,jobs.job_title FROM employees
JOIN departments ON employees.department_id=departments.department_id
JOIN jobs ON employees.job_id=jobs.job_id

(3) SELECT  first_name, salary From employees  WHERE salary > 10000 AND first_name NOT IN ('Nancy','Diaan', 'Alexander')

(4) SELECT first_name,salary FROM employees WHERE salary != (SELECT MIN(salary) FROM employees)

(5) SELECT 'My first_name is ' || first_name || '   my last name is  ' || last_name || ', I am the ' || job_id || ' and my hire data is ' || hire_date || '.' AS Details FROM employees WHERE first_name='Bruce'

(6) SELECT first_name,hire_date,salary*0.25 FROM employees WHERE hire_date <'03-JAN-09'

(7) SELECT first_name FROM employees WHERE first_name LIKE  '%r'

(8) SELECT first_name,last_name,ROUND(salary/52) AS weekly_salary FROM employees WHERE ROUND(salary/52)>600

(9) SELECT last_name, salary/2.employees,departments.department_name,job_title FROM employees
JOIN departments ON employees.department_id=departments.department_id
JOIN jobs ON employees.job_id=jobs.job_id

(10) SELECT last_name
FROM employees
WHERE LENGTH(last_name) = (SELECT MIN(LENGTH(last_name)) FROM employees);