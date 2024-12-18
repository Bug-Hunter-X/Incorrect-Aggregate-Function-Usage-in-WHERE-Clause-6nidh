# SQL Bug: Incorrect Aggregate Function Usage
This repository demonstrates a common error in SQL queries: incorrectly using aggregate functions within the WHERE clause.  The provided SQL query attempts to filter rows based on the average salary, which is invalid syntax.

## Bug Description
The `WHERE` clause in SQL is for filtering individual rows based on their column values.  Aggregate functions, like `AVG()`, operate on groups of rows.  Using an aggregate function directly in the `WHERE` clause results in a syntax error.

## Solution
To correctly filter based on the average salary, you need to use the `HAVING` clause, which is designed for filtering groups after aggregation.  Alternatively, you can use a subquery to calculate the average and then filter the main query.

## How to Reproduce
1.  Create a SQL table named `employees` with columns like `employee_id` and `salary`.
2.  Insert some sample data.
3.  Run the buggy SQL query in your database system. You'll likely encounter a syntax error.
4.  Then run the corrected query in your database system.