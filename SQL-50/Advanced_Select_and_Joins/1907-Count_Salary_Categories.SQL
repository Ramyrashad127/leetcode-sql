WITH CT AS(SELECT 'Low Salary' category UNION ALL SELECT 'High Salary' UNION ALL SELECT 'Average Salary'),

TMP AS(SELECT account_id, 
CASE 
    WHEN income < 20000 THEN 'Low Salary'
    WHEN income > 50000 THEN 'High Salary'
    ELSE 'Average Salary' END category 
FROM Accounts)

SELECT CT.category, COUNT(T.account_id) accounts_count 
FROM CT LEFT JOIN TMP T ON CT.category = T.category
GROUP BY CT.category;