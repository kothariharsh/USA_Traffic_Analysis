from google.cloud import bigquery
from google.oauth2 import service_account
import pandas as pd 
from pandas.io import gbq

cred = service_account.Credentials.from_service_account_file('CS540-9bd4e7a0facb.json')

client = bigquery.Client(credentials = cred, project = cred.project_id)

#Enter data source name. If it's a csv file, change function read_excel to read_csv
population_data = pd.read_csv('vehicles.csv')


#Enter schema name and the name of the table you want to create 
population_data.to_gbq(destination_table='Auto.UsedVehicles', project_id=cred.project_id, if_exists='replace')


