# Write your MySQL query statement below
WITH TMP AS(SELECT T1.id, T1.p_id, T2.id c_id FROM
Tree T1 LEFT JOIN Tree T2 ON T1.id = T2.p_id)

SELECT id, (CASE WHEN T.p_id IS NULL THEN 'Root'
WHEN T.c_id IS NULL THEN 'Leaf' ELSE 'Inner'END) type
FROM TMP T
GROUP BY id;