with impressions as (
select channel, sum(impressions) as impressions_sum
from {{ source ('platforms', 'tiktok')}}
group by channel
union
select channel, sum(impressions)
from {{ source ('platforms', 'twitter')}}
group by channel
union
select channel, sum(impressions)
from {{ source ('platforms', 'facebook')}}
group by channel
union
select channel, sum(imps)
from {{ source ('platforms', 'bing')}}
group by channel

)

select * from impressions