WITH TMP AS(SELECT departmentId, MAX(salary) Salary FROM Employee GROUP BY departmentId)

SELECT D.name Department, E.name Employee, T.Salary 
FROM Department D 
LEFT JOIN TMP T ON D.id = T.departmentId 
INNER JOIN Employee E ON E.departmentId = D.id AND E.salary = T.Salary;