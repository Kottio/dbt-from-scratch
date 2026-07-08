SELECT 
id AS order_id,
customer AS customer_id,
ordered_at,
store_id,
subtotal,
tax_paid,
order_total
FROM {{source('jaffle_shop', 'raw_orders')}}
