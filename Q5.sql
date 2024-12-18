-- list the 5 most ordered pizza types along with their quantities
select pizza_types.name, sum(order_details.quantity) as quant
from pizza_types
join pizzas on pizza_types.pizza_type_id = pizzas.pizza_type_id
join order_details on order_details.pizza_id = pizzas.pizza_id
group by pizza_types.name order by quant desc limit 5;

