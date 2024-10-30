select
    sales.orders_id
    ,sales.date_date
    ,sales.revenue
    ,sales.quantity
    ,ROUND((sales.quantity * product.purchse_price),2) AS purchase_cost
    ,ROUND((sales.revenue - product.purchse_price),2) AS margin
from {{ref('stg_raw__sales')}} as sales
inner join {{ref('stg_raw__product')}} as product
on sales.products_id = product.products_id