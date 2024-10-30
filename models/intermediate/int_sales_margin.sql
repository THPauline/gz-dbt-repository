select
    *
    ,ROUND((sales.revenue - product.purchse_price),2) AS margin
    ,ROUND((sales.quantity * product.purchse_price),2) AS purchase_cost
from {{ref('stg_raw__sales')}} as sales
left join {{ref('stg_raw__product')}} as product
USING(products_id)
