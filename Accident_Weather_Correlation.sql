SELECT acc.month, acc.Year , acc.total_acc ,  str.total_severe_whether 
FROM `cs540-269500.Accident.total_acc_by_month` as acc, 
`cs540-269500.Weather.total_storm_by_month` as str, 
`cs540-269500.Weather.month_num_mapping` as mn
WHERE str.month_name = mn.month_name
  AND acc.Month = mn.month_number 
  AND acc.Year = cast(str.year as string)