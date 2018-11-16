DROP TABLE IF EXISTS flight_delay_raw;
CREATE TABLE IF NOT EXISTS flight_delay_raw(
row_id int,
year int,
month int,
day_of_month int,
day_of_week int,
dept_time int,
crs_dept_time int,
arr_time int,
crs_arr_time int,
unique_carrier string,
flight_num int,
tail_num int,
actual_elapsed_time int,
crs_elapsed_time int,
air_time int,
arr_delay int,
dep_delay int,
origin string,
dest string,
distance int ,
taxi_in int,
taxi_out int,
cancelled int,
cancellation_code string,
diverted int,
carrier_delay int,
weather_delay int,
nas_delay int,
security_delay int,
late_aircraft_delay int
)
ROW FORMAT DELIMITED FIELDS TERMINATED BY ','
STORED AS TEXTFILE TBLPROPERTIES(
"skip.header.line.count"="1");