# Top_uk_youtubers_2024
![excel-to-powerbi-animated-diagram](images/kaggle_to_powerbi.gif)

# Objective
What is the key pain point?
The Head of Marketing wants to find out who the top YouTubers are in 2024 to decide on which YouTubers would be best to run marketing campaigns throughout the rest of the year.

What is the ideal solution?
To create a dashboard that provides insights into the top UK YouTubers in 2024 that includes their:
  - subscriber count
  - total views
  - total videos, and
  - engagement metrics
This will help the marketing team make informed decisions about which YouTubers to collaborate with for their marketing campaigns.

# Data source
What data is needed to achieve our objective?
We need data on the top UK YouTubers in 2024 that includes their:
  - channel names
  - total subscribers
  - total views
  - total videos uploaded

The data is sourced from Kaggle (an Excel extract), https://www.kaggle.com/datasets/bhavyadhingra00020/top-100-social-media-influencers-2024-countrywise?resource=download
# Data cleaning
## Data cleaning
1. Remove unnecessary columns by only selecting the ones we need
2. Extract the Youtube channel names from the first columns
3. Rename the column names
   <img width="980" height="582" alt="image" src="https://github.com/user-attachments/assets/d71f6fac-4b93-4c84-a50a-27f3641fa80a" />
## Data Quality Testing
1. The data needs to be 100 records of YouTube channels (row count test)
2. The data needs 4 fields (column count test)
3. The channel name column must be string format, and the other columns must be numerical data types (data type check)
4. Each record must be unique in the dataset (duplicate count check)
  - Row count - 100
  - Column count - 4
  - Data types:
    + channel_name = varchar
    + total_subscribers = integer
    + total_views = integer
    + total_videos = integer
  - Duplicate count = 0
<img width="968" height="590" alt="image" src="https://github.com/user-attachments/assets/6f817109-5c8a-4b15-903d-82eed509f9fa" />

# Visualization
## Results
<img width="1345" height="732" alt="image" src="https://github.com/user-attachments/assets/a36b94c7-6d30-44ad-8c75-9cef1a72942b" />

## DAX Measures
### 1. Total Subscribers (M)
<img width="1265" height="137" alt="image" src="https://github.com/user-attachments/assets/1724a00e-4d88-4654-9d33-5f401f372e19" />

### 2. Total Views (B)
<img width="1272" height="140" alt="image" src="https://github.com/user-attachments/assets/a3b4b70c-d677-43c2-83f2-316b037c151a" />

### 3. Total Videos
<img width="1247" height="87" alt="image" src="https://github.com/user-attachments/assets/5c2186a0-7acb-44fa-a58e-0af4b84fc165" />

### 4. Average Views Per Video (M)
<img width="1227" height="166" alt="image" src="https://github.com/user-attachments/assets/01aa6946-7b4b-421d-8249-41de376afeb4" />

### 5. Subscriber Engagement Rate
<img width="785" height="137" alt="image" src="https://github.com/user-attachments/assets/e23f5a15-5659-46df-9e68-e9ca56500217" />

### 6. Views per subscriber
<img width="1046" height="136" alt="image" src="https://github.com/user-attachments/assets/707d57fd-ad4a-4b85-b514-18485960a5a7" />

