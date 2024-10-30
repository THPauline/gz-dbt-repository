select
    *
    ,ROUND((s.revenue - p.purchse_price),2) AS margin
    ,ROUND((s.quantity * p.purchse_price),2) AS purchase_cost
    ,{{ margin_percent('s.revenue', 's.quantity * CAST(p.purchse_price AS FLOAT64)') }} AS margin_percent
from {{ref('stg_raw__sales')}} as s
left join {{ref('stg_raw__product')}} as p
USING(products_id)