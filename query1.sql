-- Question 1
-- Rank states by total sales (seller state).

SELECT SUM(o.field6) AS tot_sales, s.field4
FROM olist_order_items_dataset o 
LEFT JOIN olist_sellers_dataset s
ON o.field4 = s.field1
GROUP BY s.field4
ORDER BY tot_sales DESC;
