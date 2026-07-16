-- Question 2
-- Rank the top 10 best selling (by revenue) product categories and show their total revenues.

SELECT t.field2, SUM(o.field6) as tot_revenue
FROM olist_order_items_dataset o
LEFT JOIN olist_products_dataset p
ON o.field3 = p.field1
LEFT JOIN product_category_name_translation t
ON p.field2 = t.field1
GROUP BY t.field2
ORDER BY tot_revenue DESC
LIMIT 10;
