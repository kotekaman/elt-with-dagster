{{ config(materialized = 'view') }} 
select 
    order_id,
    toDate(order_date) as order_date,
    status,
    toInt64(extractAll(item_id, '\d+')[1]) as item_id,
    sku,
    toFloat32(qty_ordered) as qty_ordered ,
    toFloat32(price) as price,
    toFloat32(value) as value,
    toFloat32(discount_amount) as discount_amount,
    toFloat32(total) as total,
    category,
    payment_method,
    bi_st,
    toFloat32(cust_id) as cust_id,
    toInt64(year) as year,
    month,
    ref_num,
    gender,
    toFloat32(age) as age,
    full_name,
    parseDateTimeBestEffortOrNull(customer_since) as customer_since,
    ssn,
    place_name,
    county as country,  
    city,
    state,
    zip,
    region,
    user_name,
    toFloat32(discount_percent) as discount_percent
from sales_datasets