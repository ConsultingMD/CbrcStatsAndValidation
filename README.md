# CbrcStatsAndValidation
Sql queries to be run to obtain stats and validation for the cbrc raw data

## Dependencies
In order to run this notebook you must create a dot credentials file in your home path named ".redshift_creds.ini".
This file must be able to be read by the python configParser, and must be formatted as follows:
```
[REDSHIFT]
db_username : <db_username>
ssh_username : <ssh_username>
db_password : <db_password>
db_port : <db_port>
```

Ex)
```
[REDSHIFT]
db_username : jsmith
ssh_username : john.smith
db_password : sneakyp@ssw0rd
db_port : 15439
```

You must also install the dependent libraries as follows:
```
pip install psycopg2
pip install sshtunnel
```

## Connecting to redshift
In order for the notebook to connect to redshift you need to open a terminal window and
ssh into production redshift i.e. `ssh prod-redshift`. After this, open another terminal 
window and start and run the jupyter notebook. It should take less than a minute or so to run.
