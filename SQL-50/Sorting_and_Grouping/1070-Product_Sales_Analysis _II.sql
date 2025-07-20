WITH TMP AS (
    SELECT S.product_id, MIN(S.year) first_year
    FROM Sales S
    GROUP BY S.product_id
)

SELECT S.product_id, S.year first_year, S.quantity, S.price
FROM Sales S INNER JOIN TMP T ON T.product_id = S.product_id AND S.year = T.first_year;