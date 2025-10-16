create or refresh streaming live table yfinance
tblproperties ("quality" = "bronze")
as

select * 
from cloud_files(
'/Volumes/lakehouse/raw_public/yfinance/commodities/latest_prices/',
'json'
)

