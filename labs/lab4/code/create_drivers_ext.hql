SET hivevar:username=gauthier;
SET hivevar:ece_group=1;

CREATE EXTERNAL TABLE ece_2021_fall_bda_${ece_group}.${username}_nyc_drivers_ext (
  driver_id INT,
  name STRING,
  ssn INT,
  location STRING,
  certified STRING,
  wage_plan STRING
)
ROW FORMAT DELIMITED
FIELDS TERMINATED BY ','
STORED AS TEXTFILE
LOCATION '/education/ece_2021_fall_bda_${ece_group}/${username}/lab4/nyc_drivers'
TBLPROPERTIES ('skip.header.line.count'='1');
