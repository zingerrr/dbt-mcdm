### Task:
Marketing common data models (MCDM) are using for map data from various ad platforms into a single one. MCDM can help marketers with various questions about marketing metrics. 
From raw ad systems data you need to build MCDM with metrics like: cost per engage, conversion cost, impressions by channel, cost per click.

### Report:

#### Tools, that i used:
- Snowflake (DWH)
- dbt Cloud (ETL)
- Looker Studio ([dashboard](https://lookerstudio.google.com/reporting/a500a724-9804-4873-94f9-1f31ca042cf7))

#### Problems:
##### Some datasources doesn't get needed fields of data to calculate some metrics
- There's no such specific data for Twitter, which could be used for conversion, to calculate conversion cost. To solve this 
problem we need data, that can be identified as target action based on the ad (purchase, install, etc.)
- There's no data for TikTok and Bing, which could be determined as engage, to calculate cost per engage. To solve this 
problem we need data, that can be some engagement. For example, for TikTok it can be some interaction with post, session
duration, for Bing it can be bounce rate, time of scrolling, navigating and so on.
