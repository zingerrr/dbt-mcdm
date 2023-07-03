with cpe as (

select channel, sum(spend)/sum(engagements) as cpe
from {{ source ('platforms', 'twitter')}}
group by channel
union 
select channel, sum(spend)/sum(inline_link_clicks+comments+likes+shares+views)
from {{ source ('platforms', 'facebook')}}
group by channel

)

select * from cpe