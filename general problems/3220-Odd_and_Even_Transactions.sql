WITH TMP AS (SELECT SUM(amount) total, transaction_date, IF(amount%2=0,'even', 'odd') type FROM transactions GROUP BY transaction_date, type),

ANS AS (SELECT transaction_date, IF(type = 'odd',total,0) odd_sum, IF(type = 'even',total,0) even_sum
FROM TMP)

SELECT transaction_date, SUM(odd_sum) odd_sum, SUM(even_sum) even_sum FROM ANS GROUP BY transaction_date ORDER BY transaction_date;