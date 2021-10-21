SET hivevar:ece_group=1;

SELECT avg(runtimeminutes) AS avg_duration
FROM ece_2021_fall_bda_${ece_group}.imdb_title_basics
WHERE primarytitle RLIKE '(^| )[Ww]orld';
