with payments as (
    
    select 
        id as payment_id,
        orderid as order_id,
        paymentmethod,
        status,
        {{ cents_to_dollar('amount') }} as amount       
        
    from `dbt-tutorial.stripe.payment`
)

select * from payments