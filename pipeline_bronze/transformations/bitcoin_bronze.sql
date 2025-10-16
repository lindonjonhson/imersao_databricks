create or refresh streaming live table bitcoin
tblproperties ("quality" = "bronze")
as

select * 
from cloud_files(
'/Volumes/lakehouse/raw_public/coinbase/coinbase/bitcoin_spot/',
'json',
map(
  'cloudFiles.includeExistingFiles', 'false',
  'cloudFiles.inferColumnTypes', 'true',
  'cloudFiles.schemaEvolutionMode','addNewColumns'
)
)

