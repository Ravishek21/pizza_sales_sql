select pizzas.size,count(orders_details.order_details_id) AS order_count
from pizzas join orders_details
ON pizzas.pizza_id=orders_details.pizza_id
group by pizzas.size order by order_count desc;