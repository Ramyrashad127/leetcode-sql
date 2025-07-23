WITH TMP AS (
  SELECT P.product_id, MAX(P.change_date) AS last_change
  FROM Products P
  WHERE P.change_date <= '2019-08-16'
  GROUP BY P.product_id
)

SELECT 
  P.product_id, 
  IFNULL(P.new_price, 10) AS price
FROM TMP
JOIN Products P 
  ON P.product_id = TMP.product_id AND P.change_date = TMP.last_change

UNION

SELECT 
  P.product_id, 
  10 AS price
FROM Products P
WHERE P.product_id NOT IN (
  SELECT product_id FROM TMP
);