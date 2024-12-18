```sql
-- Incorrect use of aggregate functions in the WHERE clause
SELECT * FROM employees WHERE AVG(salary) > 50000;
```