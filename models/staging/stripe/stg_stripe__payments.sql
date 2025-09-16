select 
    id as payment_id,
    orderid as order_id,
    paymentmethod as payment_methode,
    status as status,
    amount/100 as amount,
    created as date_created
from {{source('stripe', 'payment')}}