SELECT U.user_id buyer_id, U.join_date, IFNULL(COUNT(O.order_id),0) orders_in_2019 
FROM Users U LEFT JOIN Orders O ON U.user_id = O.buyer_id AND YEAR(O.order_date) = 2019
GROUP BY U.user_id, U.join_date;