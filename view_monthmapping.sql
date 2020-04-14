CREATE VIEW month_num_mapping AS
(select distinct storm.month_name,
CASE 
  WHEN storm.month_name like "January" THEN "01"
  WHEN storm.month_name like "February" THEN "02"
  WHEN storm.month_name like "March" THEN "03"
  WHEN storm.month_name like "April" THEN "04"
  WHEN storm.month_name like "May" THEN "05"
  WHEN storm.month_name like "June" THEN "06"
  WHEN storm.month_name like "July" THEN "07"
  WHEN storm.month_name like "August" THEN "08"
  WHEN storm.month_name like "September" THEN "09"
  WHEN storm.month_name like "October" THEN "10"
  WHEN storm.month_name like "November" THEN "11"
  WHEN storm.month_name like "December" THEN "12"
END AS month_number
FROM (
  SELECT *
  FROM `cs540-269500.Weather.StormDetails_2016`
  ) as storm
order by month_number)