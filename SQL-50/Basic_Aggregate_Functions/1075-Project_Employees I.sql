SELECT P.project_id , ROUND(AVG(E.experience_years),2) average_years FROM Project P
INNER JOIN Employee E ON E.employee_id = P.employee_id
GROUP BY P.project_id;