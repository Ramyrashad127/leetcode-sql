WITH TMP AS(SELECT reports_to id, COUNT(reports_to) CNT, Round(AVG(age),0) average_age FROM Employees 
WHERE reports_to IS NOT NULL
GROUP BY reports_to)

SELECT E.employee_id, E.name, T.CNT reports_count, T.average_age FROM Employees E INNER JOIN TMP T
ON E.employee_id = T.id
ORDER BY E.employee_id;