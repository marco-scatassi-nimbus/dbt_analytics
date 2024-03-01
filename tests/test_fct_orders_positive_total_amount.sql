select 
    customer_id
    , sum(amount) as total_amount

from {{ ref('fct_orders') }}

group by customer_id
having total_amount < 0