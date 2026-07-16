-- Question 3
-- Show monthly sales trend.

SELECT strftime('%Y-%m', o.field4) as month, SUM(i.field6) as sales
FROM olist_order_items_dataset i
LEFT JOIN olist_orders_dataset o
ON i.field1 = o.field1
GROUP BY month
ORDER BY month;
