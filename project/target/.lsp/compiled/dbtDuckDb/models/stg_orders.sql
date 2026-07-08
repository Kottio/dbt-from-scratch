SELECT 
id AS order_id,
customer AS customer_id,
ordered_at,
store_id,
subtotal,
tax_paid,
order_total
FROM 'jaffle-data/raw_orders.csv'