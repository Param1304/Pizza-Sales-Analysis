-- Calculate the total revenue generated from pizza sales
select 
round(sum(order_details.quantity * pizzas.price),2) 
as total_revenue
from order_details join pizzas
on pizzas.pizza_id = order_details.pizza_id

