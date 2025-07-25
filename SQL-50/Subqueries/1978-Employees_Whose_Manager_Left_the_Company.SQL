SELECT E.employee_id FROM Employees E 
LEFT JOIN Employees E2 ON E2.employee_id = E.manager_id 
WHERE E2.employee_id IS NULL AND E.salary < 30000 AND E.manager_id IS NOT NULL ORDER BY E.employee_id;