
CREATE VIEW total_acc_by_month AS
(select storm.month_name, storm.year, count(event_type) as total_severe_whether
from (
  SELECT event_type, month_name, year
  FROM `cs540-269500.Weather.StormDetails_2016`
  WHERE event_type <> 'Debris Flow' AND event_type <> 'Dust Devil' AND event_type <> 'Heat' AND event_type <> 'Tropical Storm'
AND event_type <> 'Dust Storm' AND event_type <> 'Excessive Heat'

  union all

  SELECT event_type, month_name, year
  FROM `cs540-269500.Weather.StormDetails_2017`
  WHERE event_type <> 'Debris Flow' AND event_type <> 'Dust Devil' AND event_type <> 'Heat' AND event_type <> 'Tropical Storm'
AND event_type <> 'Dust Storm' AND event_type <> 'Excessive Heat'

  union all

  SELECT event_type, month_name, year
  FROM `cs540-269500.Weather.StormDetails_2018`
  WHERE event_type <> 'Debris Flow' AND event_type <> 'Dust Devil' AND event_type <> 'Heat' AND event_type <> 'Tropical Storm'
AND event_type <> 'Dust Storm' AND event_type <> 'Excessive Heat'

  union all

  SELECT event_type, month_name, year
  FROM `cs540-269500.Weather.StormDetails_2017`
  WHERE event_type <> 'Debris Flow' AND event_type <> 'Dust Devil' AND event_type <> 'Heat' AND event_type <> 'Tropical Storm'
AND event_type <> 'Dust Storm' AND event_type <> 'Excessive Heat'
  ) as storm, `cs540-269500.Accident.total_acc_by_month` as acc, `cs540-269500.Weather.month_num_mapping` as mn
 
where storm.month_name = mn.month_name
group by storm.month_name, storm.year)