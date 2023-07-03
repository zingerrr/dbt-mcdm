with cpc as (

select channel, sum(spend)/sum(clicks) as cpc
from {{ source ('platforms', 'bing')}}
group by channel
union
select channel, sum(spend)/sum(clicks)
from {{ source ('platforms', 'facebook')}}
group by channel
union
select channel, sum(spend)/sum(clicks)
from {{ source ('platforms', 'tiktok')}}
group by channel
union
select channel, sum(spend)/sum(clicks)
from {{ source ('platforms', 'twitter')}}
group by channel

)

select * from cpc