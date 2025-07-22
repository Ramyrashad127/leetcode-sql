WITH TMP AS (SELECT employee_id, COUNT(department_id) CNT FROM Employee GROUP BY employee_id)

SELECT E.employee_id, E.department_id FROM Employee E
INNER JOIN TMP T ON T.employee_id = E.employee_id
WHERE (T.CNT > 1 AND E.primary_flag = 'Y') OR (T.CNT = 1);