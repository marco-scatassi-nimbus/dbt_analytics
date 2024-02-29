with payment as
(
    select * from {{ ref('stg_payments') }}
),

orders as
(
    select * from {{ ref('stg_orders') }}
),

final as
(
    select orders.order_id
        , orders.customer_id
        , payment.amount 
        , order_date
        , status

    from orders

    left join payment using (order_id)
)

select * from final