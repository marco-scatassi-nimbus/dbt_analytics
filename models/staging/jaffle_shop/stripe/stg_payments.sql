select
    orderid as order_id,
    {{ cents_to_dollars('amount') }},
    status,
    paymentmethod as payment_method

from {{ source('stripe', 'payment') }}