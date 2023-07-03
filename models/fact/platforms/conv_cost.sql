with conv_cost as (

select channel, sum(spend)/sum(conversions) as conv_cost
from {{ source ('platforms', 'tiktok')}}
group by channel
union
select channel, sum(spend)/sum(conv)
from {{ source ('platforms', 'bing')}}
group by channel
union
select channel, sum(spend)/sum(purchase)
from {{ source ('platforms', 'facebook')}}
group by channel

)

select * from conv_cost