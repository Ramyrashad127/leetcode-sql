WITH user_rate AS(SELECT user_id, COUNT(rating) cnt FROM MovieRating GROUP BY user_id),
result1 AS(SELECT U.name FROM Users U INNER JOIN user_rate ON U.user_id = user_rate.user_id ORDER BY user_rate.cnt DESC, U.name ASC LIMIT 1),
movie_avg AS(SELECT movie_id, AVG(rating) val FROM MovieRating WHERE YEAR(created_at) = 2020 AND MONTH(created_at) = 2 GROUP BY movie_id),
result2 AS(SELECT M.title FROM Movies M INNER JOIN movie_avg ON M.movie_id = movie_avg.movie_id ORDER BY movie_avg.val DESC, M.title ASC LIMIT 1)

SELECT result1.name results FROM result1
UNION ALL
SELECT result2.title results FROM result2;