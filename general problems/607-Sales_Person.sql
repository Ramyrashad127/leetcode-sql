WITH TMP AS (SELECT S.name FROM SalesPerson S INNER JOIN Orders O
ON S.sales_id = O.sales_id INNER JOIN Company C
ON O.com_id = C.com_id
WHERE C.name = "RED"
GROUP BY S.name)