SET hivevar:ece_group=1;

SELECT count(*) AS nb
FROM ece_2021_fall_bda_${ece_group}.imdb_title_basics
WHERE runtimeminutes > 120;
