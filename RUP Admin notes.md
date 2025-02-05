## RUP Customizations 


### Guide
#### Modificare DB iniziale 
file config_db.sql : INSERT operations 

#### Backup DB
exec su - postgres -c 'pg_dump  -w -d liquid_feedback"

### Configure frontend 
Edit myconfig.lua


### TODO
1. Auto registrazione


2. Nome sito



3. Visibilità discussioni


### Dettagli tecnici

psql data_dir : /var/lib/postgresql/11/main
lua config : /opt/liquid_feedback_frontend/config/myconfig.lua