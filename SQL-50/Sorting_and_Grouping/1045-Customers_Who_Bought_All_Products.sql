WITH TMP AS (SELECT Customer_id, Count(DISTINCT product_key) count_product_key FROM Customer GROUP BY Customer_id)

SELECT C.customer_id FROM TMP C INNER JOIN (SELECT COUNT(*) cnt FROM Product) T ON C.count_product_key = T.cnt;