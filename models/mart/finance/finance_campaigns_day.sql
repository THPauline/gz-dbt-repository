SELECT
    date_date
    ,(operational_margin - ads_cost) AS ads_margin
    ,average_basket
    ,operational_margin
    ,ads_cost
    ,impression
    ,clicks
    ,quantity
    ,revenue
    ,purchase_cost
    ,margin
    ,shipping_fee
    ,logcost
    ,ship_cost
from {{ ref('int_campaigns_day') }}
join {{ ref('finance_days') }}
using(date_date)
order by date_date DESC
