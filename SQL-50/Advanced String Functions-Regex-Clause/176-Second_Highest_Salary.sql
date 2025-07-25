WITH TMP AS (SELECT MAX(salary) mx FROM Employee)
SELECT MAX(E.salary) SecondHighestSalary FROM Employee E INNER JOIN TMP T WHERE E.salary < T.mx;