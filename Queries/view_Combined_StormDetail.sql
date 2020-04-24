CREATE VIEW combined_stormdetail AS
(SELECT *
FROM `cs540-269500.Weather.StormDetails_2016`

UNION ALL

SELECT *
FROM `cs540-269500.Weather.StormDetails_2017`

UNION ALL

SELECT *
FROM `cs540-269500.Weather.StormDetails_2018`

UNION ALL

SELECT *
FROM `cs540-269500.Weather.StormDetails_2019`)