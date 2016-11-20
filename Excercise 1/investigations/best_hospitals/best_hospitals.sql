SELECT hospital_name, av_score, total_score, stddev_score, count
from hospitals
WHERE count > 10
ORDER BY av_score DESC
limit 100;
