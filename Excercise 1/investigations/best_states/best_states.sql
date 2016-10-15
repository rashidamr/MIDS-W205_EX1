SELECT state, av_score, total_score, stddev_score, count
from states
ORDER BY av_score DESC
limit 100;
