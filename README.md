# tcn_json
Modified version of Postgresql tcn extension

USAGE:

create trigger tcn_trigger after insert or update or delete 
  on MYSCHEMA.MYTABLE
  for each row 
  execute procedure triggered_change_notification_json('my_tcn_json_channel', '146');
	
Then:

listen my_tcn_json_channel

Payload: "146",U,{"id":"593"}

INSTALATION (ubuntu x64, Postgres 9.5): 
- make install
- in postgresl: CREATE EXTENSION tcn_json


INSTALATION (ubuntu x64, Postgres 9.6): 
- download postgresql source code, 
- copy tcn_json folder to contrib
- cd contrib/tcn_json
- export NO_PGXS=1
- make clean or make USE_PGXS=1 clean
- make or make USE_PGXS=1
- (sudo) make install or (sudo) USE_PGXS=1 make
- in postgresl: CREATE EXTENSION tcn_json


INSTALATION (other): 
- download postgresql source code, 
- copy tcn_json folder to contrib
- cd contrib/tcn_json
- export NO_PGXS=1
- make
- (sudo) make install
- in postgresl: CREATE EXTENSION tcn_json




