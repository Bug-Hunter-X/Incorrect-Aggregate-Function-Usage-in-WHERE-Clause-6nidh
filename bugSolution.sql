```sql
-- Correct use of aggregate functions with HAVING clause
SELECT employee_id, salary FROM employees GROUP BY employee_id, salary HAVING AVG(salary) > 50000;

--Alternative solution using subquery
SELECT * FROM employees WHERE salary > (SELECT AVG(salary) FROM employees);
```