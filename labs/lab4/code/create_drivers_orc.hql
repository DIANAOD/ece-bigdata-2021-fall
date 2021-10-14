SET hivevar:username=gauthier;
SET hivevar:ece_group=1;

CREATE TABLE ece_2021_fall_bda_${ece_group}.${username}_nyc_drivers (
  driver_id INT,
  first_name STRING,
  last_name STRING,
  ssn INT,
  address STRING,
  certified BOOLEAN,
  wage_plan STRING
)
STORED AS ORC;
