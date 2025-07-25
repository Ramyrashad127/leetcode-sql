SELECT id, SUM(cnt) AS num
FROM (
  SELECT requester_id AS id, COUNT(*) AS cnt FROM RequestAccepted GROUP BY requester_id
  UNION ALL
  SELECT accepter_id AS id, COUNT(*) AS cnt FROM RequestAccepted GROUP BY accepter_id
) AS combined
GROUP BY id
ORDER BY num DESC
LIMIT 1;