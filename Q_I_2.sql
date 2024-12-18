-- Determine the distribution of orders by hour of the day.
select hour(orders.time) as hour, 
count(order_id) as order_count from orders
group by hour(orders.time);
