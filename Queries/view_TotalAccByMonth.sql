
CREATE VIEW total_acc_by_month AS
(select count(acc.id) as total_acc, substr(start_date, 6, 2) as Month, substr(start_date, 1, 4) as Year
from `cs540-269500.Accident.AccidentDetail` as acc
group by substr(start_date, 6, 2), substr(start_date, 1, 4))