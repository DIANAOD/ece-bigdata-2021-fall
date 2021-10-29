SET hivevar:ece_group=1;

SELECT avg(averagerating) AS avg_rating
FROM (
  SELECT
    tconst
  FROM ece_2021_fall_bda_${ece_group}.imdb_title_basics
  WHERE NOT array_contains(genres, 'Comedy')
) titles
JOIN ece_2021_fall_bda_${ece_group}.imdb_title_ratings ratings
ON titles.tconst = ratings.tconst;
