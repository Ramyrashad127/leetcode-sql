SELECT query_name, ROUND(AVG(rating/position),2) quality,
ROUND(100.0 * SUM(CASE WHEN rating < 3 THEN 1 ELSE 0 END) / COUNT(query_name), 2) AS poor_query_percentage
FROM Queries
GROUP BY query_name;