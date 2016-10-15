SELECT measure_id, av_score, stddev_score, count,
av_score/stddev_score AS variability
from variability
WHERE count > 1000
ORDER BY variability DESC
limit 100;
