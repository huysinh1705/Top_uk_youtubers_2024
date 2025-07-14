/* 
#Data cleaning steps

1. Remove unnecessary columns by only selecting the ones we need
2. Extract the Youtube channel names from the first columns
3. Rename the column names

*/

select 
	NOMBRE,
	total_subscribers,
	total_views,
	total_videos
from [dbo].[youtube_data_from_python]

-- Charindex
-- select CHARINDEX('@', nombre), nombre from [dbo].[youtube_data_from_python]

-- substring
create view view_uk_youtube_2024 as
select 
	cast(SUBSTRING(NOMBRE, 1, CHARINDEX('@', nombre)-1) as varchar(100)) as channel_name,
	total_subscribers,
	total_views,
	total_videos
from [dbo].[youtube_data_from_python]