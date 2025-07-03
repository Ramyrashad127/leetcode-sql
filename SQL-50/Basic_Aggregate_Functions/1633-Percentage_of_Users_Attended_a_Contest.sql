SELECT R.contest_id, ROUND(100*COUNT(R.user_id)/(SELECT COUNT(user_id) FROM Users),2) AS percentage
FROM Users U INNER JOIN Register R ON R.user_id = U.user_id
GROUP BY R.contest_id
ORDER BY percentage DESC, R.contest_id ASC;