with cpc as (

    select * from {{ ref('cpc')}}

),

impressions as (

    select * from {{ ref('impressions')}}

),

conv_cost as (

    select * from {{ ref('conv_cost')}}

),

cpe as (

    select * from {{ ref('cpe')}}

),


final as (

select cpc.channel, 
       cpc.cpc, 
       impressions.impressions_sum,
       conv_cost.conv_cost,
       cpe.cpe
from cpc left join impressions on cpc.channel = impressions.channel
         left join conv_cost on cpc.channel = conv_cost.channel
         left join cpe on cpc.channel = cpe.channel

)

select * from final