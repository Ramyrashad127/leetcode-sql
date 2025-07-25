SELECT 
    D.name AS Department,
    E.name AS Employee,
    E.salary AS Salary
FROM (
    SELECT *,
           DENSE_RANK() OVER (PARTITION BY departmentId ORDER BY salary DESC) AS rnk
    FROM Employee
) E
JOIN Department D ON E.departmentId = D.id
WHERE E.rnk <= 3;