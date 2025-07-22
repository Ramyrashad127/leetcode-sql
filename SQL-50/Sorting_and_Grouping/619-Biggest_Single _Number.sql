WITH TMP AS(SELECT num, COUNT(num) cnt FROM MyNumbers GROUP BY num)

SELECT IFNULL((SELECT M.num from MyNumbers M INNER JOIN TMP T ON M.num = T.num AND T.cnt = 1
ORDER BY M.num DESC
LIMIT 1), NULL) num;