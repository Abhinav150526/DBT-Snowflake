-- models/customer_orders.sql
SELECT 
    o.order_id,
    o.order_date,
    s.customer_name,
    s.customer_email
FROM 
    {{ source('MY_DATABASE', 'customers') }} AS s
JOIN 
    {{ source('MY_DATABASE', 'orders') }} AS o
ON 
    s.customer_id = o.customer_id

 

 
