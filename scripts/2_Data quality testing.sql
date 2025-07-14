/*

# Data quality tests

1. The data needs to be 100 records of YouTube channels (row count test)
2. The data needs 4 fields (column count test)
3. The channel name column must be string format, and the other columns must be numerical data types (data type check)
4. Each record must be unique in the dataset (duplicate count check)

Row count - 100
Column count - 4

Data types

channel_name = varchar
total_subscribers = integer
total_views = integer
total_videos = integer

duplicate count = 0

*/

-- 1. Row count check

select count(*) no_of_rows
from [youtube.db].[dbo].[view_uk_youtube_2024]

-- 2. Columns count check

select COUNT(*) column_count
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'view_uk_youtube_2024'

-- 3. Data type check

select column_name,
DATA_TYPE
from INFORMATION_SCHEMA.COLUMNS
where TABLE_NAME = 'view_uk_youtube_2024'

-- 4.Duplicate records check

select 
	channel_name,
	count(*) as duplicate_count	
from 
	view_uk_youtube_2024
group by
	channel_name
having	
	count(*) > 1