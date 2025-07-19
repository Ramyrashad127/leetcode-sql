SELECT ROUND(
    (100 * COUNT(D2.customer_id)/(SELECT COUNT(DISTINCT D1.customer_id) FROM Delivery D1)),2
    ) immediate_percentage 
FROM (
        SELECT * FROM Delivery D4 
        WHERE (D4.customer_id, D4.order_date) IN (SELECT D3.customer_id, MIN(D3.order_date) FROM Delivery D3 GROUP BY D3.customer_id)
        ) D2 
WHERE D2.order_date = D2.customer_pref_delivery_date;