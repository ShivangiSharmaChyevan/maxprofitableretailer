#-----------------------------------------------------Hive code to get best dealerof petrol ---------------------------------------------




#------------Create a table---------------------

create table petrol (distributer_id STRING,distributer_name STRING,amt_IN STRING,amy_OUT STRING,vol_IN INT,vol_OUT INT,year INT) row format delimited fields terminated by ‘,’ stored as textfile;

#--------------Move data from local to petrol table-----------

load data local inpath ‘/home/petrol.txt’ into table petrol;

#--------------real life what is the total amount of petrol in volume sold by every distributor?
-------------

SELECT distributer_name,SUM(vol_OUT) FROM petrol GROUP BY distributer_name;

#------------Top 10 distributors ID’s for selling petrol and also display the amount of petrol sold in volume by them individually?------------------

SELECT distributer_id,vol_OUT FROM petrol order by vol_OUT desc limit 10;

