SELECT E.name Employee FROM Employee E INNER JOIN Employee M ON E.managerId = M.id 
WHERE E.salary > M.salary;