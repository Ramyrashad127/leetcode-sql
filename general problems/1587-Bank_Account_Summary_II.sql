SELECT U.name, SUM(T.amount) balance FROM
Users U INNER JOIN  Transactions T ON U.account = T.account
GROUP BY U.name
HAVING balance >10000;